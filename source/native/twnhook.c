/*
 * libtwnhook.so — LD_PRELOAD hook for Township's save decoder.
 *
 * Patches libgame.so!0x73c4b01 (the save decode function, which decodes IN PLACE on *(rsi)).
 * After it returns, the plaintext std::string at *(rsi) is dumped to a file the app can read.
 *
 * Build (x86_64):
 *   $NDK/toolchains/llvm/prebuilt/windows-x86_64/bin/x86_64-linux-android24-clang \
 *       -shared -fPIC -O2 -o libtwnhook.so twnhook.c
 *
 * Install:  adb push libtwnhook.so /data/local/tmp/
 * Run:      su -c 'setprop wrap.com.playrix.township "LD_PRELOAD=/data/local/tmp/libtwnhook.so"'
 *           launch the game -> /data/data/com.playrix.township/files/twn_decoded.bin appears
 */
#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <unistd.h>
#include <fcntl.h>
#include <errno.h>
#include <pthread.h>
#include <sys/mman.h>
#include <sys/stat.h>


#define TARGET_OFF 0x73c4b01ULL   /* libgame.so offset of the decode function */
#define PATCH_LEN  15             /* whole instructions: 5 pushes + sub rsp,0x80 */
#define APK_LIB_OFF 0x310000ULL    /* libgame.so data offset in installed ABI split */
#define APK_LIB_SIZE 172625656ULL
#define DUMP1 "/data/data/com.playrix.township/files/twn_decoded.bin"
#define DUMP2 "/data/local/tmp/twn_decoded.bin"
#define LOG_PATH "/data/local/tmp/twnhook.log"
#define MINLEN 100000             /* only dump the big save document */

static unsigned char g_orig[PATCH_LEN];
static void *g_tramp = NULL;
static uintptr_t g_target = 0;
static volatile int g_patched = 0;

typedef void *(*fn_t)(void *, void *, long, void *);

static void log_state(const char *message, uintptr_t value) {
    int fd = open(LOG_PATH, O_WRONLY | O_CREAT | O_APPEND, 0666);
    if (fd < 0) return;
    char line[160];
    int n = snprintf(line, sizeof line, "%s 0x%llx\n", message,
                     (unsigned long long)value);
    if (n > 0) write(fd, line, (size_t)n);
    close(fd);
}

static uintptr_t find_libgame(void) {
    FILE *f = fopen("/proc/self/maps", "r");
    if (!f) return 0;
    char line[1024];
    uintptr_t base = 0;
    while (fgets(line, sizeof line, f)) {
        unsigned long long lo = 0, off = 0;
        char perms[5] = {0};
        if (sscanf(line, "%llx-%*llx %4s %llx", &lo, perms, &off) != 3) continue;

        /* Extracted installs expose libgame.so directly. */
        if (strstr(line, "libgame.so")) {
            base = (uintptr_t)(lo - off);
            break;
        }

        /*
         * Modern Android loads the uncompressed ELF straight from the split APK,
         * so /proc/self/maps names only split_config.x86_64.apk. Translate the
         * APK file offset back to the libgame ELF-relative offset.
         */
        if (strstr(line, "split_config.x86_64.apk") &&
            off >= APK_LIB_OFF && off < APK_LIB_OFF + APK_LIB_SIZE) {
            base = (uintptr_t)(lo - (off - APK_LIB_OFF));
            break;
        }
    }
    fclose(f);
    return base;
}

static void dump_plaintext(void *a1) {
    if (!a1) return;
    char *data = *(char **)a1;
    size_t len = *(size_t *)((char *)a1 + 8);
    if (!data || len < MINLEN || len > 64 * 1024 * 1024) return;

    struct stat old = {0};
    if (stat(DUMP1, &old) == 0 && old.st_size >= (off_t)len) {
        log_state("candidate_skipped", (uintptr_t)len);
        return;
    }

    log_state("candidate_selected", (uintptr_t)len);
    char tmp[160];
    int n = snprintf(tmp, sizeof tmp, "%s.tmp", DUMP1);
    if (n <= 0 || (size_t)n >= sizeof tmp) return;
    int fd = open(tmp, O_WRONLY | O_CREAT | O_TRUNC, 0644);
    if (fd < 0) {
        n = snprintf(tmp, sizeof tmp, "%s.tmp", DUMP2);
        if (n <= 0 || (size_t)n >= sizeof tmp) return;
        fd = open(tmp, O_WRONLY | O_CREAT | O_TRUNC, 0666);
    }
    if (fd < 0) return;
    size_t off = 0;
    while (off < len) {
        ssize_t w = write(fd, data + off, len - off);
        if (w <= 0) break;
        off += (size_t)w;
    }
    fsync(fd);
    close(fd);
    if (off == len) {
        if (strstr(tmp, DUMP1) != NULL) {
            rename(tmp, DUMP1);
        } else {
            rename(tmp, DUMP2);
        }
    } else {
        unlink(tmp);
        log_state("candidate_write_failed", (uintptr_t)off);
    }
}

/*
 * The wrapper replaces the target's entry. It is reached via `jmp` from the patched
 * entry, so the original caller's return address is on the stack — the C `ret` here
 * returns to that caller exactly as the original function would have.
 */
static void *wrapper(void *a0, void *a1, long a2, void *a3) {
    fn_t orig = (fn_t)g_tramp;
    void *ret = orig(a0, a1, a2, a3);   /* runs the original function */
    dump_plaintext(a1);                 /* *(a1) is now the plaintext std::string */
    return ret;
}

static void do_patch(uintptr_t base) {
    g_target = base + TARGET_OFF;
    log_state("libgame_base", base);
    log_state("decode_target", g_target);
    memcpy(g_orig, (void *)g_target, PATCH_LEN);

    g_tramp = mmap(NULL, 4096, PROT_READ | PROT_WRITE | PROT_EXEC,
                   MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    if (g_tramp == MAP_FAILED) {
        log_state("mmap_failed", 0);
        return;
    }

    /* trampoline: original prologue bytes, then jmp back to target+PATCH_LEN */
    memcpy(g_tramp, g_orig, PATCH_LEN);
    unsigned char *p = (unsigned char *)g_tramp + PATCH_LEN;
    uintptr_t cont = g_target + PATCH_LEN;
    p[0] = 0x48; p[1] = 0xB8; memcpy(p + 2, &cont, 8); p[10] = 0xFF; p[11] = 0xE0;

    /* patch target entry: mov rax, wrapper ; jmp rax ; nop... */
    uintptr_t w = (uintptr_t)&wrapper;
    unsigned char patch[PATCH_LEN];
    patch[0] = 0x48; patch[1] = 0xB8; memcpy(patch + 2, &w, 8);
    patch[10] = 0xFF; patch[11] = 0xE0;
    for (int i = 12; i < PATCH_LEN; i++) patch[i] = 0x90;

    uintptr_t page = g_target & ~0xFFFULL;
    if (mprotect((void *)page, 0x2000, PROT_READ | PROT_WRITE | PROT_EXEC) != 0) {
        log_state("mprotect_failed", (uintptr_t)errno);
        return;
    }
    memcpy((void *)g_target, patch, PATCH_LEN);
    __builtin___clear_cache((char *)g_target, (char *)g_target + PATCH_LEN);
    g_patched = 1;
    log_state("patch_installed", (uintptr_t)g_tramp);
}

static void *wait_and_patch(void *arg) {
    (void)arg;
    /* libgame.so is loaded by the JVM after this .so — poll until it appears */
    for (int i = 0; i < 600; i++) {
        uintptr_t base = find_libgame();
        if (base) { do_patch(base); break; }
        usleep(100000);   /* 100 ms */
    }
    return NULL;
}

__attribute__((constructor))
static void twn_init(void) {
    log_state("constructor", (uintptr_t)getpid());
    pthread_t th;
    if (pthread_create(&th, NULL, wait_and_patch, NULL) == 0) pthread_detach(th);
}
