/*
 * twninject — load a .so into a running process via ptrace (x86_64 Android, rooted).
 *
 * Usage:  twninject <pid> <path-to-so>
 *
 * Classic ptrace + remote-dlopen injection. Uses the target's own dlopen, invoked by
 * hijacking its registers, with a null return address so the return traps as SIGSEGV
 * (which we catch) — no need to locate a breakpoint gadget.
 *
 * Build:
 *   $NDK/.../x86_64-linux-android24-clang -O2 -o twninject twninject.c
 */
#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <unistd.h>
#include <fcntl.h>
#include <errno.h>
#include <signal.h>
#include <libgen.h>
#include <dlfcn.h>
#include <sys/ptrace.h>
#include <sys/wait.h>
#include <sys/user.h>

#define WORD unsigned long

static int read_word(int pid, uintptr_t addr, WORD *out) {
    errno = 0;
    WORD v = ptrace(PTRACE_PEEKDATA, pid, (void *)addr, NULL);
    if (errno) return -1;
    *out = v;
    return 0;
}

static int write_word(int pid, uintptr_t addr, WORD val) {
    return ptrace(PTRACE_POKEDATA, pid, (void *)addr, (void *)val);
}

static int write_mem(int pid, uintptr_t addr, const void *buf, size_t n) {
    const unsigned char *p = buf;
    for (size_t i = 0; i < n; i += sizeof(WORD)) {
        WORD w = 0;
        size_t chunk = (n - i < sizeof(WORD)) ? (n - i) : sizeof(WORD);
        if (chunk < sizeof(WORD)) memcpy(&w, p + i, chunk);
        else memcpy(&w, p + i, sizeof(WORD));
        if (write_word(pid, addr + i, w) < 0) return -1;
    }
    return 0;
}

static int read_mem(int pid, uintptr_t addr, void *buf, size_t n) {
    unsigned char *p = buf;
    for (size_t i = 0; i < n; i += sizeof(WORD)) {
        WORD w;
        size_t chunk = (n - i < sizeof(WORD)) ? (n - i) : sizeof(WORD);
        if (read_word(pid, addr + i, &w) < 0) return -1;
        memcpy(p + i, &w, chunk);
    }
    return 0;
}

/* Return the ELF load bias: mapping start minus its file offset. */
static uintptr_t module_base(int pid, const char *name) {
    char path[64], line[1024];
    snprintf(path, sizeof path, "/proc/%d/maps", pid);
    FILE *f = fopen(path, "r");
    if (!f) return 0;
    uintptr_t base = 0;
    while (fgets(line, sizeof line, f)) {
        if (!strstr(line, name)) continue;
        unsigned long long lo = 0, off = 0;
        if (sscanf(line, "%llx-%*llx %*4s %llx", &lo, &off) == 2) {
            base = (uintptr_t)(lo - off);
            break;
        }
    }
    fclose(f);
    return base;
}


int main(int argc, char **argv) {
    if (argc < 3) { fprintf(stderr, "usage: %s <pid> <so>\n", argv[0]); return 2; }
    int pid = atoi(argv[1]);
    const char *so = argv[2];

    if (ptrace(PTRACE_ATTACH, pid, NULL, NULL) < 0) { perror("attach"); return 1; }
    int st; waitpid(pid, &st, 0);

    struct user_regs_struct regs, saved;
    if (ptrace(PTRACE_GETREGS, pid, NULL, &regs) < 0) { perror("getregs"); ptrace(PTRACE_DETACH,pid,0,0); return 1; }
    saved = regs;

    /*
     * Resolve dlopen in our process, then transplant its module-relative
     * offset into the same Android system module in the target process.
     */
    void *local_dlopen = dlsym(RTLD_DEFAULT, "dlopen");
    Dl_info di;
    memset(&di, 0, sizeof di);
    if (!local_dlopen || !dladdr(local_dlopen, &di) || !di.dli_fbase || !di.dli_fname) {
        fprintf(stderr, "could not resolve local dlopen\n");
        ptrace(PTRACE_DETACH, pid, 0, 0);
        return 1;
    }
    const char *module_name = strrchr(di.dli_fname, '/');
    module_name = module_name ? module_name + 1 : di.dli_fname;
    uintptr_t target_base = module_base(pid, di.dli_fname);
    if (!target_base) {
        fprintf(stderr, "no target mapping matching %s\n", di.dli_fname);
        ptrace(PTRACE_DETACH, pid, 0, 0);
        return 1;
    }
    uintptr_t dlopen_addr = target_base +
        ((uintptr_t)local_dlopen - (uintptr_t)di.dli_fbase);
    fprintf(stderr, "inject: dlopen=%p via %s base=%p\n",
            (void *)dlopen_addr, module_name, (void *)target_base);

    /* Borrow stack memory, preserving it so detach leaves no corruption. */
    const size_t scratch_len = 0x408;
    uintptr_t scratch = (regs.rsp - scratch_len) & ~0xFULL;
    unsigned char backup[0x408];
    if (read_mem(pid, scratch - 8, backup, sizeof backup) < 0) {
        perror("read scratch");
        ptrace(PTRACE_DETACH, pid, 0, 0);
        return 1;
    }
    if (write_mem(pid, scratch, so, strlen(so) + 1) < 0) {
        perror("write path");
        ptrace(PTRACE_DETACH, pid, 0, 0);
        return 1;
    }

    /* SysV x86_64 call: dlopen(path, RTLD_NOW), returning to zero as a trap. */
    uintptr_t call_sp = scratch - 8;
    if (write_word(pid, call_sp, 0) < 0) {
        perror("write return address");
        ptrace(PTRACE_DETACH, pid, 0, 0);
        return 1;
    }
    regs.rip = dlopen_addr;
    regs.rdi = scratch;
    regs.rsi = RTLD_NOW;
    regs.rsp = call_sp;
    if (ptrace(PTRACE_SETREGS, pid, NULL, &regs) < 0) {
        perror("setregs");
        ptrace(PTRACE_DETACH, pid, 0, 0);
        return 1;
    }

    int stopped_at_trap = 0;
    for (int event = 0; event < 16; event++) {
        if (ptrace(PTRACE_CONT, pid, NULL, NULL) < 0 || waitpid(pid, &st, 0) < 0) {
            perror("continue/wait");
            break;
        }
        if (!WIFSTOPPED(st)) break;
        if (ptrace(PTRACE_GETREGS, pid, NULL, &regs) < 0) break;
        int sig = WSTOPSIG(st);
        fprintf(stderr, "inject: stop signal=%d rip=%p rax=%p\n",
                sig, (void *)regs.rip, (void *)regs.rax);
        if (sig == SIGSEGV && regs.rip == 0) {
            stopped_at_trap = 1;
            break;
        }
    }

    uintptr_t handle = stopped_at_trap ? regs.rax : 0;
    write_mem(pid, scratch - 8, backup, sizeof backup);
    ptrace(PTRACE_SETREGS, pid, NULL, &saved);
    ptrace(PTRACE_DETACH, pid, NULL, NULL);
    if (!stopped_at_trap || !handle) {
        fprintf(stderr, "inject: dlopen failed or return trap not reached\n");
        return 1;
    }
    fprintf(stderr, "injected %s into %d, handle=%p\n", so, pid, (void *)handle);
    return 0;
}
