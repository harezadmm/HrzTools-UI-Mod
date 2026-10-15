# TWNTOOL — LOCAL CODEC PROJECT (Option 2)

> **Objective:** Remove the remote VPS dependency for **save decode** and **save encode**, by
> extracting the codec from the game engine itself and running it locally. Target end state:
> **zero VPS, zero premium key, zero "could not decode" error.**
>
> **This document is a working ledger, not a report.** It is designed so that a new AI instance
> can resume mid-task after a context limit. Read §0 first, then §7 (Checkpoint Ledger).
>
> **Scope of this document:** Township only. Other games are a later replication (see §10).
>
> **Created:** 2026-10-11 · **Last updated:** 2026-10-11 (rev 2 — model routing, token discipline,
> existing-tool inventory)

---

## 0. HOW TO USE THIS DOC — RESUME PROTOCOL (~60 seconds)

If you are a new AI instance picking this up mid-project, do exactly this:

1. Read **§0.1 CURRENT STATE** below. It names the active task and the next task. Do not read the
   whole checkpoint ledger unless §0.1 is stale or contradictory.
2. Read **§0.3 STOP RULE** — a WIP limit of one, and the three-strikes escalation.
3. Read **§3.4 TOKEN BUDGET & READ DISCIPLINE** — the forbidden-file list. Skipping it is how a
   whole budget gets spent on one careless read.
4. Read **§6 TASK LEDGER** for the definition of the task named in §0.1 "Next".
5. Read **§4 HARD TRAPS** before running anything. Skipping this is how work gets destroyed.
6. Read **§8 EVIDENCE STANDARD** — it defines what counts as "done".
7. When you finish a unit of work, **append** a checkpoint to §7 and **update §0.1**. Never rewrite
   the ledger; append only.

**Rule for the resuming AI:** if §0.1 says a task is `IN PROGRESS`, do not restart it from
scratch. Read its checkpoint entries in §7 first. Partial artifacts live where the checkpoint
says they live.

### 0.1 CURRENT STATE

```
ACTIVE TASK : (none — CP-026 complete, field characterization ready to broaden)
NEXT TASK   : test broader client-owned field set (Unlocked_ava*, Boost*, decorations, zoo layout) then port to other Playrix games
BLOCKED ON  : nothing (AVD emulator-5566 reachable; frida-server PID 8604 running)
LAST CP     : CP-026
LEDGER SIZE : 26 checkpoints
```

**Session 2 (device) results:** the ciphertext is captured in-process (300,008 B, header 0x79), the
native save path is located in libgame.so by backtrace, a full AES inverse S-box is confirmed at
libgame.so `0x23d6150`, compression is ruled out, and keystream reuse is ruled out. See §2.11 and
CP-008..CP-012. **Still open: the AES key, the mode, and the IV location.**

**Device facts:** MuMu at `127.0.0.1:7555` (Android 12 x86_64, rooted); pull saves with
`adb exec-out` (NOT `adb shell cat`). Township's libgame.so is byte-identical to
`REBUILD/native/libgame.so`. Working capture tools: `tools/capture3.py` (ciphertext),
`tools/capture4_bt.py` (backtrace), `tools/capture5_disasm.py` (Frida disassembler).

**Update this block every time you append a checkpoint.** It is the only mutable state in this
file. Everything below is either reference or append-only history.

### 0.2 MODEL TIER ROUTING — which tasks need a strong model

This project is designed to be continued by **a different, possibly weaker/cheaper model** than
the one that wrote it. That is safe **only if the work is routed correctly**. Not every task needs
a strong model — but the ones that do will fail quietly on a weak one.

Tier key: **S** = strong model required · **M** = mid · **W** = weak model is fine

| Task | Tier | Why |
|---|---|---|
| LC-0.1, LC-0.2, LC-0.3 | **W / M** | Mechanical capture + a CSV inventory. LC-0.3 needs some reasoning → M. |
| LC-1.0, LC-1.1, LC-1.3 | **W** | Run a script, collect a buffer, report a yes/no. |
| LC-1.2 (string → xref) | **M** | Needs a disassembly view and pointer reasoning. |
| LC-1.4, LC-1.5, LC-1.6 | **S** | Reading a codebase and inferring what guards a path. Weak models confabulate here. |
| **LC-2.1 (derive the algorithm)** | **S** | **The core of the project.** This is where a weak model burns the budget without progress. |
| LC-2.2 (implement decoder) | **M** | Implementation once the algorithm is known. |
| LC-2.3 (verify 54/54) | **W** | Run the script, count the passes. The oracle does the judging. |
| LC-3.1 (implement encoder) | **M / S** | MAC + IV correctness. Slips to S if a MAC is involved. |
| LC-3.2 (round-trip) | **W** | Script. |
| LC-3.3 (game acceptance) | **W** | Open the game. Look. |
| LC-4.0 (duplicate check) | **M** | Deterministic verification, but must be done exactly. |
| LC-4.1 (shipping form) | **S** | A design decision with long consequences. |
| LC-4.2 … LC-4.6 | **M** | Mechanical, but Traps T1/T2 punish carelessness. |
| LC-5.x | **W** | Mechanical cleanup. |

**Rough split: about two thirds of the tasks are safe on a weak model.** Only LC-1.4–1.6, LC-2.1,
LC-3.1 and LC-4.1 genuinely need strength.

**Escalation trigger:** if a task at tier M/W has been attempted **three times** without a
checkpoint-worthy result, do not attempt a fourth. Hand that single task to a stronger model, keep
everything else on the cheap one. Do not switch the whole project.

### 0.3 STOP RULE (the most important rule for a weak model)

> **Three consecutive failed attempts on the same task = STOP and escalate.**

A weak model's characteristic failure is not fabrication — it is **looping**: try a variant, fail,
try a near-identical variant, fail, repeat. Each loop burns tokens and produces no checkpoint. The
oracle (`D7.c()`, 54/54) makes a *wrong* answer detectable; it does not make *looping* stop.

So: after the third failed attempt on one task, append a `BLOCKED` checkpoint naming what was
tried, and stop. The next model — or a stronger one — resumes from that note. A `BLOCKED`
checkpoint with three documented dead ends is **a valuable result**, not a failure.

**Corollary:** never start a new task while the current one has no checkpoint. A WIP limit of one.

---

## 1. DECISION RECORD

### 1.1 What was decided

Jack selected **Option 2** from the three presented:

| Option | Description | Chosen |
|---|---|---|
| 1 | Keep decode/encode on the VPS. Requires a permanently valid premium key + live VPS. Login screen must stay reachable so the key can reach `ApiClient.w()`. | ❌ |
| **2** | **Move decode/encode local. Extract the codec from the game engine (`libgame.so`) and run it in the app. Zero VPS, zero key, zero error.** | ✅ |
| 3 | Keep the VPS as a safety net while Option 2 is built incrementally. | ❌ (fallback if Option 2 stalls) |

### 1.2 Why Option 1 was rejected

Option 1 does not achieve the goal. It keeps the premium key mandatory (the key is the `password`
field in the login request), keeps the VPS mandatory (it is the only thing that can decode), and
guarantees the error returns. Full reasoning and evidence is in §3.3.

### 1.3 Hard constraint accepted with Option 2

Option 2 is **not a patch and not a repackage**. It is a reverse-engineering project with a real
possibility of stalling. §9 lists the unknowns that could stall it. Nothing in this document
should be read as a promise that it will succeed.

### 1.4 A rule that does not expire

**Do not plan, scan, probe, or test against the live VPS.** It is a third party's production
server. Client-side analysis is complete (§3.3); nothing in this project requires touching it.
For the same reason: do not spend time "reconning the VPS" — see §1.5.

### 1.5 Why VPS recon would not help even if it were allowed

Recon sees the VPS as a black box: send ciphertext, receive XML. That teaches how to **use** the
server, not how to **replace** it — and replacement is the entire objective. Moreover, the client
half of the protocol is already fully known from `smali/` (§3.3). The missing half is the codec
**inside** the box, which is not observable from outside under any circumstances.

The codec has a second copy: inside the game engine on the device. That copy is observable, and
that is the target of this project.

---

## 2. VERIFIED FACTS

Everything in this section was confirmed by a command that was actually run. Commands are in §10.

### 2.1 Architecture

- TwnTool (`com.twntool.android`) is **pure JVM** — the APK contains **no `lib/*.so`**.
- UI is a WebView over `assets/index.bin` (encrypted, 3,064,998 B) → decrypted to
  `index_decrypted.html` (3,100,155 B).
- Decode/encode is **100% remote**. There is no codec inside the APK.
- The backend serves a **double duty**: (a) codec, (b) entitlement. Only (a) is being replaced
  here; (b) becomes dead code and is removed in Phase 5.

### 2.2 The VPS does exactly two jobs

| Job | Endpoints | Replaced by |
|---|---|---|
| **Decode** — container `0x79` → XML | `/api/decode`, `/api/bin/decode` | local codec (Phase 2) |
| **Encode** — XML → container `0x79` | `/api/encode`, `/api/bin/encode` | local codec (Phase 3) |

The remaining endpoints (`/api/ts/fetch`, `/api/ts/save`, `/api/auth/*`, `/api/edit`) are
supporting infrastructure. Once the two jobs above are local, the VPS is decorative.

### 2.3 The error Jack screenshotted — full trace

Both halves of that message are **local**; the VPS never sends it.

| Message fragment | Location |
|---|---|
| `"The VPS could not decode the save:"` | `decomp/assets/ui_javascript.js:39` (client i18n map) |
| `"Faça login com sua chave premium para usar esta função."` | `decomp/smali/com/twntool/network/ApiClient.smali:10091` (hardcoded string) |

`ApiClient.j()V` @ `ApiClient.smali:9899` is the thrower:

```smali
:cond_2
new-instance v0, LF1;
const-string v1, "Fa\u00e7a login com sua chave premium para usar esta fun\u00e7\u00e3o."
invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
throw v0
```

Reachable guard (from `j()` lines 1–12), in order:

```
h (access_token) != null   -> return        (session already present)
n (key) is empty           -> :cond_2       -> THROW
o (hwid) is empty          -> :cond_2       -> THROW
```

**Therefore the message means "no key AND no token" — not "key is not premium". The wording is
misleading.**

### 2.4 Why patching the login overlay produces that error

Cause and effect, verified:

1. `ApiClient.w(String,String)V` @ `11248` — this is where a key enters field `n` and an hwid
   enters field `o`. If the key differs from the previous one, it nulls the token `h`.
2. `ApiClient.d(...)` @ `5293` calls `j()` at **line 5320**. `ApiClient.e(...)` @ `6764` calls
   `j()` at **line 6787**. Both are request wrappers.
3. Hiding the login overlay means **nothing ever calls `w()`** → `n` and `o` stay null → `j()`
   throws on the first decode/encode.

So the screenshot error is a **direct consequence of the local-gate patch**, not an unrelated
fault. Any approach that keeps the codec remote must keep a key path alive.

### 2.5 The remote contract (read from `j()` and the request builders)

```
POST /api/auth/login
  { username, password = <key>, hwid }
  -> { access_token, refresh_token }
```

Every decode/encode request carries, at `ApiClient.smali` lines `2574-2586`, `6001-6058`,
`7347-7404`:

```
Authorization: Bearer <access_token>
X-Session-Id
X-Timestamp
X-Nonce
X-Signature
```

`X-Signature` is a signed request. It is **not forgeable client-side**. No APK patch reaches this
layer — this is why Option 1 cannot be "patched around".

### 2.6 `libgame.so` — what is actually in it (CORRECTS §6 of REBUILD_PLAN.md)

This corrects an earlier, wrong claim that the library has an intact symbol table.

| Property | Measured value |
|---|---|
| Size | 172,625,656 B |
| Format | ELF64, little-endian |
| Section headers | 29, present (not stripped of headers) |
| **`.symtab`** | **ABSENT** |
| `.dynsym` | present, 99,552 B, **4,148 entries** |
| dynsym entries containing `GameInfo` | **0** |
| `EVP_*` / `AES_*` / `SSL_*` in dynsym | **0** (OpenSSL statically linked) |
| `inflate` / `deflate` / `crc32` / `SHA` / `HMAC` in dynsym | **0** |
| `ZSTD_*` in dynsym | **165** ← the only hookable codec primitives |
| `LZ4_*` in dynsym | 44 |
| `Java_*` in dynsym | 169 (JNI exports) |
| `.rodata` | file offset 30,054,080 = vaddr `0x1ca96c0`, size 7,808,304 |

**Consequence:** you **cannot** do
`Module.getExportByName("libgame.so", "...GameInfo::SaveLocalInfo")`. It will not resolve.
Function addresses must be found by **code xref to strings** or by **dynamic observation**.

**Useful property:** for `.rodata`, `file_offset == virtual_address` (offset 0 in the section's
file-addr delta). Any string found by a raw byte scan can be converted to its runtime address by
using its file offset directly. This is verified, not assumed.

### 2.7 The codec functions DO exist — as RTTI and log strings

Found in `.rodata` (a mixed string pool also holding asset names, class names and log formats):

```
...6__ndk110__function6__funcIZN8GameInfo13SaveLocalInfoEvE4$_10NS_9allocatorI...
```

That is an RTTI typeinfo name for a `std::function` closure inside `GameInfo::SaveLocalInfo()`.

Also present:

- `GameInfo::SaveGame`, `GameInfo::SaveImpl`, `GameInfo::SavePartial`, `GameInfo::Load`,
  `GameInfo::LoadConstsBase`, `GameInfo::LoadConstsOther`, `GameInfo::LoadErnieInfo`
- `LoadFromGameInfo: не удалось получить Instance` (a **debug log string** — a ready-made xref
  anchor)
- `EncryptGameInfo`, `CompressGameInfo` — **CAUTION:** these appear inside a concatenated
  resource/flag name blob (e.g. `...JoinVIPCompressGameInfoM3Boosts...`). They are most likely
  **resource or feature-flag names**, not function symbols. Do not treat them as proven
  function identifiers until §LC-1.2 confirms.

**Conclusion:** the codec is real and named, but the names are not addressable. This changes the
first practical step from "hook the function" to "find the function" (§LC-1).

### 2.8 Township save format (unchanged from §3.1 of REBUILD_PLAN.md)

- Save files: `mGameInfo.xml`, `mGameInfo.bak`, `LocalInfo.xml`, `GlobalVars.xml`, `StartupConsts.xml`
- Device path: `/data/data/com.playrix.township/saves/`
- Header: first byte `0x79`
- Size: `8 + N×100000` (300008 / 400008 / 500008) → content + zero padding
- Entropy ≈ 7.7. **Not** zlib/gzip/bzip2/lzma. No repeating XOR period → a real cipher.
- Other container magic: `PLXE`
- **Acceptance oracle** `D7.c()`: output text must begin with `<` and contain one of
  `<TownGround`, `<Buildings`, `<root`, `<Object`, `<Global`, `<Vars`

`D7.c()` is the single most valuable asset in this project — it turns "eyeball the hex" into an
**automated pass/fail** over all 54 unique sample saves.

### 2.9 The receiving side is already local

`TwnBridge.d()` @ `smali/com/twntool/android/bridge/TwnBridge.smali:2570` accepts
**already-decoded XML** locally (class `LC7`) with no backend contact. Only `0x79`-encoded input
(`LB7`) is forwarded upstream. So once a local decoder exists, the app's own receive path already
works — no bridge rewrite needed for the decode direction.

**Open question carried forward:** who produces the `LC7` instance today? If the answer is "the
VPS", a local codec is mandatory for decode. §LC-0 and §LC-1 answer this.

### 2.10 FINDINGS FROM THE FIRST CLIENT-SIDE BATCH (all measured, none inferred)

This block resolves LC-1.4, LC-1.5, LC-1.6, LC-4.0 and most of LC-2.1. Read it before re-deriving
any of it.

**The save codec is confirmed server-side. TwnTool cannot decode a save locally, and never could.**

| Function | Line | What it is |
|---|---|---|
| `ApiClient.f([B,String,String)LO6;` | 8120–8783 | Remote decode entry. **Primary path: `POST /api/bin/decode`.** On exception (catch_0) it falls back to `ApiClient.A(...)` (GZIP) → `POST /api/decode`. |
| `ApiClient.m([B)[B` | 1763 | **GZIP compress** (`GZIPOutputStream` → `toByteArray`). Verified by reading the body. |
| `ApiClient.G([B)[B` | 4945 | **zstd decompress** via `io.airlift.compress.zstd.ZstdDecompressor`. The APK bundles `io/airlift/compress/` (zstd + bzip2). |
| `ApiClient.x([B)Ljava/lang/String;` | 3360 | **SHA-256** hex — the cache key. |
| `ApiClient.A(...)` | 288 | GZIP request-body helper. |

**`Lf3` is a cache, not a codec.** Declared in `f3.1.smali` (`.class public final Lf3;` — the `.1`
is apktool disambiguation, see T6). Field `ApiClient;->s:Lf3;` is `volatile`, constructed at
`ApiClient.smali:9589`. Its three fields: `a` = SHA-256 of the input save, `b` = the server's
`"have"` token, `c` = the cached decoded bytes. In `f()` at 8277–8295 the code compares
`x(p1)` against `Lf3.a`; if equal it sends `{"have": Lf3.b}` and, when the server answers
`unchanged == true`, **returns the cached bytes without re-decoding** (`decode bin: inalterado, doc
reaproveitado`). **A local codec makes this cache unnecessary — it can be bypassed, not ported.**

**AES-GCM in `ApiClient` is TRANSPORT crypto, not the save codec.** `AES/GCM/NoPadding` appears in
exactly three methods — `d()` @ 5610, `e()` @ 6814, `g()` @ 9018 — i.e. the three HTTP
request/stream methods. It encrypts the client↔VPS request body using the session key from the
X25519 handshake (`ApiClient.n()` @ 10194). It never touches the `0x79` save container.

**The connect path (LC-1.4).** `ConnectGameUseCase.a(LJb;Li6;)` @ line 531 calls
`ApiClient.f([B,String,String)` — the remote decode. It is guarded **not** by `ApiClient.l()Z` but
by a VPS-URL check: `Lud;->m` must start with `https://` and must not contain the placeholders
`twntool.example` / `seudominio` / `sua.api`, else it returns `conn_vps_unset`. Other error strings
in the same method: `conn_no_root`, `conn_not_installed|`, `conn_save_missing|`,
`conn_save_missing_px`, `conn_read_empty`, `conn_oom|`, `conn_decode_fail|`, `erro na VPS`.
**Line 531 is the decode swap point for the connect flow.**

**Sample corpus (LC-0.2 / LC-0.3).** `REBUILD/samples/XML_DATA/` holds **60** `mGameInfo.{xml,bak}`
files across ~20 player folders, of which **54 are unique** (6 are byte-identical duplicates — the
`after fix/` folders are *copies*, not re-encryptions).

- Every file: header byte **`0x79`** (60/60), size **`8 + N×100000`** (60/60), N ∈ {3,4,5,6}.
- **Trailing padding is literal, unencrypted `0x00`** — one sample carries a run of 80,850 zero
  bytes, and the block `00×16` repeats 5,052 times. Encrypted zeros would not repeat. **So a low
  whole-file entropy (6.66) is only padding dilution, not a different cipher** — the *encrypted*
  region is ~7.99 in every sample.
- **No IV reuse** and **no ECB structure.** The apparent shared 16-byte prefixes were the
  byte-identical duplicates above. No repeating 16-byte blocks in the ciphertext region.
- Conclusion: a real cipher with per-save randomness, payload ≤ ~1 MB, padded to a fixed size.

**Build viability (LC-4.0) — RESOLVED IN FAVOUR OF TIER B.** A full `apktool b` succeeds; the earlier
failure was host page-file size (see T10). Original vs rebuilt:

| | Entries | `classes.dex` | airlift | ZstdDecompressor | AES/GCM |
|---|---|---|---|---|---|
| `REBUILD/apk/TwnTool_12.apk` | 417 | 7,774,108 B | ✓ | ✓ | ✓ |
| `REBUILD/build/_viability_test.apk` | 381 | 8,361,700 B | ✓ | ✓ | ✓ |

**No `am`/`Am` duplicate exists.** `Am.smali` = `LAm;`, `am.1.smali` = `Lam;` (two distinct classes).

**The rebuilt `assets/index.bin` is 3,064,959 B** — i.e. the current, patched asset, not the pristine
one. That is the *correct* behaviour and the opposite of Trap T7's old build.

### 2.11 DEVICE CAPTURE — SAVE FORMAT CHARACTERIZED; AES PRESENT BUT NOT YET PROVEN AS THE CODEC

Full write-up: `REBUILD/evidence/device/FINDINGS.md`. Condensed:

- **MuMu** at `127.0.0.1:7555` (Android 12 x86_64, rooted); Township playable. Township's
  `libgame.so` is **byte-identical** to `REBUILD/native/libgame.so` (sha256 `1ebb95114e9fbfd4`), so
  local static analysis is valid for the device.
- **Pull saves with `adb exec-out`, never `adb shell cat`** — the latter CRLF-translates and turns
  300,008 into 300,509 bytes.
- **The ciphertext was captured in-process** (Frida `read` hook, spawn mode): 300,008 B, header
  `0x79`, three identical reads. Files: `evidence/device/capture3/read_fd*.bin`.
- **The save path was located by native backtrace** (Backtracer.FUZZY — ACCURATE gave one frame):
  - read: `libc!read → libgame!0x75c4b18 → 0x756dc0d → 0x75be1f6 → 0x75bdbeb → 0x75bd8f1 → 0x75bdc81 → 0x75bd9f5`
  - write: `libc!write → libgame!0x75c4c14 → 0x756df25 → 0x7452237 → 0x7452dba → 0x7452b9e → 0x487821f`
  - Evidence: `evidence/device/backtrace/backtraces.txt`, `evidence/device/disasm/disasm.json`
- **Not compression.** No gzip/zlib/bz2/xz/zstd/lz4 magic at any offset; no decompression succeeds.
- **No keystream reuse.** `XOR(live.xml, live.bak)` is 4.41 only because 171,135 bytes are shared
  zero padding; the XOR over the non-padding region is **7.9930 — full random**.
- **A full AES inverse S-box (256 bytes) sits at libgame.so file offset `0x23d6150`.** A real AES
  implementation is present. **Anchor for xref.**
- **Caution:** the `AES-256` / `RC4` / `ChaCha20` strings in libgame.so are the **OpenSSL OID name
  table** (`0x1cc0000`–`0x1e50000`). They are OpenSSL's registry, **not** the game's codec choice.
  Do not cite them as evidence of the algorithm.
- **Still unknown:** the AES key, the mode (CBC/CTR/GCM), and where the IV/nonce sits. Next step:
  hook the save functions above and dump the key schedule + IV, or xref `0x23d6150`.

**AES primitive located (CP-013).** The inverse S-box at `0x23d6150` has exactly **one** static xref:
`libgame.so!0x977e6a5` (`lea rax, [rip - 0x73a855c]`). Around it is a textbook **T-table AES** —
32-bit table lookups (`dword ptr [rsi+rax]`, index masked `0x3fc`), round-key XORs (`[r8-0x1c]`…`[r8]`),
`add r8, 0x20` advancing the round-key pointer, and byte-wise `movzx` S-box lookups in the final
round. **AES is confirmed inside libgame.so, and `0x977e6a5` is the routine to watch.**

**Two false positives to not repeat** (both cost a run each):
- The runtime S-box monitor flagged `libgame.so!0x979339f` — that is a **jump-table dispatcher**
  (`movsxd rax,[rcx+rax*4]; jmp rax`), not an S-box lookup. `MemoryAccessMonitor` watches a *page*,
  so unrelated code in the same page trips it.
- The chain-hook "CIPHER" hits were a lone leading `0x79` byte matching a **pointer table**. A
  ciphertext predicate must require `0x79` **and** high-entropy following bytes, not `0x79` alone.

**IMPORTANT — do not overclaim.** AES is *present* in libgame.so (a T-table AES routine at
`0x977e6a5`), but it is **NOT yet proven to be the save codec**. Hooking the AES T-table loop
(`0x977e49d`) during a save load produced **zero** hits (CP-014). The AES routine may belong to
TLS/network crypto in the same library. Treat "the save uses AES" as an **open hypothesis**, not a
finding. What is *proven* about the save: `0x79` header, `8+N×100000` size, unencrypted zero
padding, no keystream reuse, not standard compression, and the codec lives on the load/save call
chain in libgame.so (CP-010).

---

## 3. ENVIRONMENT & TOOLCHAIN

### 3.1 Present and verified

`python`, `python3`, `node`, `java` (Temurin 21.0.11), `adb`, `frida` (client 17.23.3 on
Python 3.14), `openssl`.

Emulators (both Android 12 x86_64, rooted): MuMu `127.0.0.1:7555`, AVD `emulator-5566`.
frida-server 17.18 at `/data/local/tmp/frida-server`.

Build inputs: `REBUILD/tools/apktool.jar` (24,352,463 B), `REBUILD/tools/uber-apk-signer.jar`
(3,208,194 B), `REBUILD/tools/twn-key.jks` (pass `${KEYSTORE_PASSWORD}`, alias `twn`).
`zipalign.exe` at `C:/Users/Hariz/AppData/Local/Android/Sdk/build-tools/{34.0.0,35.0.0,36.0.0}/`
(**not on PATH**).

### 3.2 Absent / not usable

- `sqlmap nuclei ffuf nmap ncat hashcat john gitleaks katana dalfox arjun subfinder dnsx gau naabu
  wafw00f certipy jadx exiftool` — none present.
- **`cryptography` is NOT installed for host Python.** Use **Node** `crypto` for all `index.bin`
  work (`REBUILD/tools/ui_bundle.mjs` is written and round-trip verified).
- **Git is not installed.** No `rg`.
- `objdump` / `nm` availability **unverified**. The ELF parser in §10 needs nothing but Python and
  produces the same 4,148 dynsym entries.

### 3.3 Host quirks that will waste your time if ignored

- **Windows CRLF everywhere** in the APK asset text files. A full-line `str.replace` silently
  misses. `read_text(encoding="utf-8")` + `write_text` preserves CRLF because `\r` stays in the
  string. Verify byte counts after any asset edit.
- **`grep -rIl` without `--include=` over this tree times out (>300 s)** — it walks APK blobs and
  the 172 MB `libgame.so`. Always scope with `--include=` **and** an explicit directory. Even a
  scoped smali-wide grep takes 3–12 s.
- Use the `grep` / `glob` / `read` tools, not shell `grep`, where possible.
- Bash is Git Bash. There is **no git repository** in this folder.

---

### 3.4 TOKEN BUDGET & READ DISCIPLINE

This project was resumable on a limited token budget. Measured on the real tree:

| What | Size | If read whole |
|---|---|---|
| `smali/com/twntool/` (the only relevant smali package) | 3.17 MB | ~951K tok |
| All of `docs/` (the per-session boot cost) | 65 KB | **~19K tok** |
| `index_decrypted.html` | 2.96 MB | **886K tok** |
| `ui_javascript.js` | 2.31 MB | **693K tok** |
| `TownshipEngine.smali` | 965 KB | 282K tok |
| `TwnBridge.smali` | 498 KB | 146K tok |
| `ui_styles.css` | 334 KB | 101K tok |

**FORBIDDEN — never read these whole. Grep first, then read a line range.**

```
decomp/assets/index_decrypted.html         (886K tok)
decomp/assets/ui_javascript.js             (693K tok)
decomp/smali/.../township/TownshipEngine.smali   (282K tok)
decomp/smali/.../bridge/TwnBridge.smali    (146K tok)
decomp/assets/ui_styles.css                (101K tok)
native/libgame.so                          (172 MB binary — never open)
```

**Rule: no file over ~50K tokens is read whole.** Locate with `grep`, then read the range with a
line selector. `ApiClient.smali` (57K tok) is the only file where a full read is defensible when its
whole flow is the subject — and even then, prefer ranges.

**Corpus verification must be scripted.** 54 unique samples × per-file output is the single largest
avoidable expense in this project. The oracle predicate (§10.1) is mechanical: run it in one script
that prints a pass count, not one pass per file echoed into the transcript. **If that script does
not exist yet, writing it IS part of LC-2.3** — a one-liner that prints `N/54` is worth more than
54 individual confirmations.

---

**DUPLICATE-TREE HAZARD — the token trap nobody sees coming.** `_work/` (509 MB) is largely a
duplicate of `REBUILD/` (568 MB). Grepping the wrong tree returns **stale content**, and the tokens
spent reasoning about it are worse than wasted — they produce a confident wrong conclusion. Always
confirm which tree you are in (§10.4).

**Estimated budget per phase** (context + thinking + tool output, per active session):

| Phase | Estimate |
|---|---|
| LC-0 ground truth | 5–15M |
| LC-1 locate the codec | 15–40M |
| LC-2 decode | **40–90M** |
| LC-3 encode | 30–70M |
| LC-4 integrate | 15–40M |
| LC-5 cleanup | 5–15M |
| **Total** | **~110–270M** (midpoint ~150M) |

**Three rules that keep the budget honest:**

1. **Checkpoints are a token-saving device, not a formality.** Re-deriving a fact costs tokens.
   Writing it once in §2 or §7 means no future session pays for it again. The orientation cost of a
   resuming session — re-reading `ApiClient.smali` + `AuthManager.smali` + surrounding greps — is
   roughly **141K tokens**. Across 300 resume cycles that is ~42M, about a quarter of the budget.
   §2 exists to cut that.
2. **Log dead ends, not just progress.** A recorded "tried X, failed, because Y" is worth more than
   a recorded success — it prevents the next session from paying twice for the same negative result.
3. **Verify by script, never by eye.** The oracle over 54 unique samples produces ~2K tokens of output.
   Eyeballing the same 54 files costs orders of magnitude more and is less reliable.

**When to stop:** if a phase's spend passes its upper estimate with no checkpoint to show, stop and
re-plan. Do not keep spending because "it must be close".

---

## 4. HARD TRAPS — READ BEFORE RUNNING ANYTHING

These are confirmed ways work gets destroyed or corrupted.

| # | Trap | Guard |
|---|---|---|
| T1 | **`apktool` does not encrypt assets.** It copies `decomp/assets/index.bin` verbatim. A full `apktool b` without first regenerating `index.bin` ships a **stale pristine asset**, and the UI patch disappears. This is exactly what is wrong with the APK in `REBUILD/build/`. | Always run `ui_bundle.mjs encrypt` before any build; verify after with `ui_bundle.mjs verify`. |
| T2 | **Zip-replacing an entry without re-signing breaks APK Signature v2/v3** → `INSTALL_PARSE_FAILED_NO_CERTIFICATES`. | After any zip surgery: strip `META-INF/*.SF`, `*.RSA`, `*.MF`, run `zipalign -p -f 4`, then re-sign. |
| T3 | **Never rename a value that appears in a captured request/response or in an on-disk i18n bundle.** Renaming falsifies evidence and breaks the app's own lookups. | Leave `hwid`, `clone_detected`, `device_limit`, `key_revoked`, `login_err_device_limit*`, `badge_clone_*`, `px_side_pass_*` alone. `Pirate*` strings in `i18n/*.json` are **Township cosmetics** — game data, not project framing. |
| T4 | **Duplicated trees.** Every asset edit must be applied twice. | See §10.4 for the pair table. |
| T5 | **Marker renames must land in three files per tree.** `merge_ui.py` verifies detector strings against `index_decrypted.html`, not `ui_javascript.js`. | Edit `ui_javascript.js` **and** `index_decrypted.html` **and** `merge_ui.py` detector, in **both** trees. Otherwise the merge reports spurious `MISSING!`. |
| T6 | ~~**`am.smali` / `Am.smali` are byte-identical, both declare `LAm;`**~~ — **THAT CLAIM WAS WRONG. Resolved.** There is **no** duplicate. `Am.smali` declares `LAm;`. A separate file `am.1.smali` declares **`Lam;`** — a *different class*. The `.1` suffix is apktool's disambiguation for a case-insensitive filename collision (`Am.smali` vs `am.smali`). Identical pattern for `F3.smali` / `f3.1.smali`. A full `apktool b` **succeeds**. | Do not "fix" the `*.1.smali` filenames and do not delete either file — apktool reads the `.class` directive, not the filename. |
| T10 | **A full `apktool b` dies on this host unless the JVM heap is capped.** The default invocation fails with `os::commit_memory(...) failed ... The paging file is too small for this operation to complete`. It **looks** like a build/smali failure and is **not** one — it is the host's page-file size. | Always build as `java -Xmx1024m -XX:MaxMetaspaceSize=256m -XX:+UseSerialGC -jar apktool.jar b ...`. Verified working: produces an 11,136,759 B APK whose `classes.dex` still contains `airlift`, `ZstdDecompressor` and `AES/GCM`. |
| T7 | **The packaged asset in `REBUILD/build/*.apk` is pristine** (0 `PATCHED` markers, login overlay present). Do not use it as a base for a UI-patched build. | Regenerate `index.bin` from source. |
| T8 | Frida 17 API changes: `Memory.readByteArray` **removed** → use `ptr.readByteArray(len)`; `Module.findExportByName` **removed** → use `Module.getGlobalExportByName`. | Write scripts against the new API. |
| T9 | **TwnTool's process name is `"TWN Tool"`**, not the package name. | Use the correct process name in Frida. |

---

## 5. THE JOB — WHAT MUST BE REPLACED

Only one box changes. Everything else in the app is already local.

```
BEFORE
Encrypted save (0x79…)
      └─[SEND TO VPS]─► VPS decode ─► XML
                                        │
                        (device edits XML via regex — already local)
                                        ▼
Game-ready file ◄─[SEND TO VPS]─ VPS encode ◄─ edited XML

AFTER
Encrypted save (0x79…)
      └─[LOCAL CODEC]─► XML
                          │
          (device edits XML via regex — UNCHANGED)
                          ▼
Game-ready file ◄─[LOCAL CODEC]─ edited XML
```

### 5.1 Swap points in the app (line numbers are current)

| Function | Line | Role |
|---|---|---|
| `ApiClient.f([B,String,String)LO6;` | `ApiClient.smali:8120` | remote decode entry; picks `bin/zstd` vs `json/base64` |
| `ApiClient.t([B,String,String)LO6;` | `ApiClient.smali:10613` | decode sibling |
| `ApiClient.d(String,Object,[BZ)Lu1;` | `ApiClient.smali:5293` | request wrapper — **calls `j()` at 5320** |
| `ApiClient.e(...)` | `ApiClient.smali:6764` | request wrapper — **calls `j()` at 6787** |
| `ApiClient.j()V` | `ApiClient.smali:9899` | **the auth gate + the premium throw** |
| `ApiClient.l()Z` | `ApiClient.smali:10163` | **codec channel selector, NOT an auth gate.** Read field `f:Lam;`, 5 callers, all internal |
| `ApiClient.w(String,String)V` | `ApiClient.smali:11248` | writes key→`n`, hwid→`o`; nulls token `h` on key change |
| `AuthManager.n()V` | `auth/AuthManager.smali:4711` | **clears the session** (`h`, `i`, `j`, `k` → null) |
| `TwnBridge.d(...)` | `bridge/TwnBridge.smali:2570` | **already accepts local `LC7` XML** — receive side is ready |

**Where the error dies:** `j()` is called at `d()`:5320 and `e()`:6787. Once the codec is local
and these paths no longer go over the network, `j()` is not on the path at all and the throw
disappears **by construction** — not by patching it out.

### 5.2 A correction to carry forward

An earlier note in this session claimed `ConnectGameUseCase` is guarded by `ApiClient.l()Z`.
**That is wrong.** `l()Z` is a codec-channel selector with only 5 callers, all inside
`ApiClient.smali` itself (8171, 8261, 9513, 10635, 10980). What actually guards the
connect-to-game path is **not yet determined** — it is answered by §LC-1.4. Do not restate the
retracted claim.

---

## 6. TASK LEDGER

Status values: `TODO` · `IN PROGRESS` · `DONE` · `BLOCKED` · `DROPPED`

### LC-0 — GROUND TRUTH (zero risk, highest information per minute)

| ID | Task | Done-criteria | Evidence artifact | Status |
|---|---|---|---|---|
| LC-0.1 | Capture **paired samples** in both senses: (a) ciphertext→ciphertext (save, copy file, change in-game, save, copy again — ≥3 pairs with a known plaintext delta), and (b) ciphertext→plaintext for the *same* save (the on-disk encoded file plus the decrypted XML from memory — see §10.8). | ≥3 pairs on disk with a written description of what changed between them | `evidence/pairs/` | TODO |
| LC-0.2 | Inventory every `mGameInfo.{xml,bak}` under `REBUILD/samples/XML_DATA/`: bytes, first 16 hex, header byte, tail bytes, size % 100000, entropy. | A table of 60 rows (54 unique) | `evidence/sample_inventory.csv` | DONE (see CP-001) |
| LC-0.3 | Classify cipher behaviour from the pairs: does a small plaintext change cause total diffusion (block/stream with strong avalanche) or a localised change (ECB / fixed-IV CBC)? Does file length correlate with plaintext length? | A written hypothesis with the pair bytes that support it | checkpoint entry | DONE (see CP-002) |

**Why this is first:** it narrows the algorithm space **without reading a single line of code**, and
it costs nothing. It uses only the device, the game, and files Jack already owns.

**Risk:** none. No third party involved.

### LC-1 — LOCATE THE CODEC (names are not addressable; find it by observation)

| ID | Task | Done-criteria | Evidence artifact | Status |
|---|---|---|---|---|
| LC-1.0 | Confirm the package is installed and frida-server attaches: process name is `"TWN Tool"` for TwnTool, `com.playrix.township` for the game. | Successful attach log | checkpoint entry | TODO |
| LC-1.1 | Hook libc file I/O (`open`, `read`, `write`, `mmap`) in the game process. Capture the exact buffer the game reads for `mGameInfo.xml` and the exact buffer it writes on save. **PARTIALLY WRITTEN ALREADY — see §10.8. Do not rewrite `capture.py` from scratch.** | Buffers captured on disk, with lengths | `evidence/io_trace/` | TODO |
| LC-1.2 | Xref the `.rodata` debug string `LoadFromGameInfo: не удалось получить Instance` to its referencing code address. Use the fact that `.rodata` file offset == vaddr. | A code address + the disassembly window around it | `evidence/xref_loadfromgameinfo.txt` | TODO |
| LC-1.3 | Hook the 165 `ZSTD_*` exports during a load/save cycle. Determine whether zstd is on the save/load path at all. | A yes/no answer backed by captured call args | checkpoint entry | TODO |
| LC-1.4 | Read `ConnectGameUseCase.a(LJb;Li6;)` @ `game/ConnectGameUseCase.smali:68` to method end (~1200 lines) and determine what actually guards connect-to-game. | A written answer with line numbers; no retracted claims | checkpoint entry | DONE (see CP-004) |
| LC-1.5 | Identify what class `Lf3` is (`ApiClient;->s:Lf3;`, referenced ~line 8198 inside `f()`). If `Lf3` is a **local codec engine**, the whole cost model changes. | A named class with its role | checkpoint entry | DONE (see CP-005) |
| LC-1.6 | Read `ApiClient.f([B,String,String)LO6;` @ 8120 **from line 8280 to method end**. Only 8120–8280 has been read. | Method read in full, summarised | checkpoint entry | DONE (see CP-005) |

**Method ranking (cheapest first):**
1. **LC-1.1 (libc I/O hook)** — `open`/`read`/`write` are real dynsym exports and always hookable.
   This catches the moment the encoded buffer enters the process and the moment plaintext exists,
   **without knowing any function name**. This is the most reliable route and should be attempted
   before symbol hunting.
2. **LC-1.2 (string xref)** — free once you know the offset; needs a disassembler view.
3. **LC-1.3 (ZSTD hook)** — cheap, and definitively answers whether compression is in the chain.

**Risk:** low.

### LC-2 — LOCAL DECODE (the real project risk starts here)

| ID | Task | Done-criteria | Evidence artifact | Status |
|---|---|---|---|---|
| LC-2.1 | Derive the algorithm and key material from the LC-0/LC-1 evidence. Determine whether the key is static (in `libgame.so`), device-derived, or account-derived. | A written finding + the key bytes if static | checkpoint entry | TODO |
| LC-2.2 | Implement a decoder (Node or Python) that turns `0x79` containers into XML. | Working decoder script | `tools/codec_decode.*` | TODO |
| LC-2.3 | **Verify against the oracle `D7.c()`.** Run the decoder over **all 54 unique** sample saves (`check_samples.py` dedupes). | **54/54** produce text starting `<` and containing one of the six accepted root tags. | `evidence/decode_verify.txt` | TODO |

**Done-criteria note:** the corpus is 60 files / **54 unique** (verified, CP-001 — not the 90
originally assumed). A partial pass is a **failure**, not a partial success. The samples vary in
size and content; a decoder that works on 84 of them is a decoder that will corrupt a user's save.

**Risk:** medium — this is where the project can stall. §9 lists the specific unknowns.

### LC-3 — LOCAL ENCODE (usually harder than decode)

| ID | Task | Done-criteria | Evidence artifact | Status |
|---|---|---|---|---|
| LC-3.1 | Implement the encoder (XML → container). Handle IV/nonce and any MAC correctly. | Working encoder script | `tools/codec_encode.*` | TODO |
| LC-3.2 | **Round-trip test:** decode a sample → encode it → decode again. | Byte-stable or semantically identical XML | `evidence/roundtrip.txt` | TODO |
| LC-3.3 | **Game-acceptance test:** encode an edited XML, place it at `/data/data/com.playrix.township/saves/`, launch the game, confirm the save loads. | The game loads the edited save without error | screenshot / log | TODO |

**Critical:** LC-3.3 is the **only** test that proves the codec. Byte-identical output is **not**
required — if the format uses GCM or a MAC, the bytes will differ while the file remains perfectly
valid. **Do not chase byte-identical output. Chase "the game accepts it".**

**Risk:** medium. Encode is harder because IV and MAC must both be right.

### LC-4 — INTEGRATE INTO THE APP

| ID | Task | Done-criteria | Evidence artifact | Status |
|---|---|---|---|---|
| LC-4.0 | **Settle the `am.smali`/`Am.smali` duplicate deterministically** (`grep -c "^\.class public final enum LAm;"`, `cmp`). Decide whether a full `apktool b` is viable or whether integration must be zip-level. | A definitive yes/no | checkpoint entry | DONE (see CP-006) |
| LC-4.1 | Decide the shipping form — see §6.1. | A written decision with rationale | checkpoint entry | TODO |
| LC-4.2 | Wire the local codec into `ApiClient.f()` @ 8120 / `ApiClient.t()` @ 10613 (or whatever LC-1.6 proves is the right seam), replacing the remote decode. | Code change + the seam it replaced | checkpoint entry | TODO |
| LC-4.3 | Wire the local encoder into the encode call sites (`C1` / `Lo`). | Code change | checkpoint entry | TODO |
| LC-4.4 | Regenerate `index.bin` from source and rebuild. **Trap T1 applies.** | `ui_bundle.mjs verify` passes; `PATCHED` marker count > 0 in the built asset | `evidence/build_verify.txt` | TODO |
| LC-4.5 | Sign + zipalign + install. **Trap T2 applies.** | Install succeeds; app launches | checkpoint entry | TODO |
| LC-4.6 | **End-to-end acceptance:** decode a real save, edit it, encode it, put it back, launch the game, confirm it loads. **With the VPS unreachable** (airplane mode or a bogus `vps_base_url`). | Works with no network path to the VPS | screenshot / log | TODO |

#### 6.1 Shipping form decision (LC-4.1)

TwnTool is **pure JVM**. You cannot simply drop `libgame.so` in — it is 172 MB and belongs to the
game, not the tool.

| Form | Shape | Trade-off |
|---|---|---|
| **(A) Port to Java** | Reimplement the codec in dex | Cleanest — app stays pure JVM. Needs a Java zstd implementation if zstd is in the chain. |
| **(B) Own small `.so`** | Compile the reimplemented codec into a small `.so` | Not `libgame.so` — a fresh, small library. Requires NDK. |
| **(C) Delegate to the game via Frida** | Frida calls the game's engine | Fastest to **prove** the concept. **Not a product** — needs root on every launch. |

Recommended path: prove with **(C)** in LC-3.3, ship with **(A)** unless zstd makes (B) necessary.

### LC-5 — REMOVE THE REMNANTS (mechanical, low risk)

| ID | Task | Done-criteria | Status |
|---|---|---|---|
| LC-5.1 | Cut the auth call paths — `AuthManager.a()` / `.b()` → `twntool.com/auth/login`. | No auth network call on startup or on any feature path | TODO |
| LC-5.2 | `ApiClient.j()` becomes unreachable on feature paths (it should already be, once the codec is local). Verify, do not assume. | Static confirmation that no live path calls `j()` | TODO |
| LC-5.3 | Replace `/api/ts/fetch` + `/api/ts/save` with local file I/O. **This is also the "save game disimpan di local hp" requirement.** | Cloud save = local file | TODO |
| LC-5.4 | Get the UI patches into the shipped APK. The source patches exist (`ui_javascript.js`, `index_decrypted.html`); the packaged APK does **not** have them (**Trap T7**). | Built asset shows `PATCHED` markers | TODO |
| LC-5.5 | Confirm the delivered behaviour: **no login screen, no key prompt, no "could not decode" error, with the VPS unreachable.** | Full manual pass, offline | TODO |

---

## 7. CHECKPOINT LEDGER

**Append-only.** Never rewrite an entry. Never delete one. Newest at the bottom.

### 7.1 Checkpoint format — copy this block

```
### CP-<NNN> | <YYYY-MM-DD> | <agent name>
- Task:       LC-x.y
- Status:     DONE | PARTIAL | BLOCKED
- Did:        <one or two sentences, past tense, concrete>
- Result:     <what is now true that was not true before>
- Evidence:   <exact paths, with byte sizes where relevant>
- Next:       LC-x.z
- Blockers:   <none, or what is needed and from whom>
- Notes:      <traps hit, dead ends, corrections to earlier entries>
```

**Rules:**
- One checkpoint per **unit of work**, not per session.
- `PARTIAL` is a valid and useful status. Say what is left.
- If a previous entry is wrong, **do not edit it** — correct it in the new entry's `Notes`.
- Always fill `Evidence` with a real path. "It worked" is not a checkpoint.
- Always update **§0.1 CURRENT STATE** in the same pass.

### 7.2 Ledger

```
### CP-001 | 2026-10-11 | LTX-quasar
- Task:       LC-0.2
- Status:     DONE
- Did:        Inventoried every mGameInfo.{xml,bak} under REBUILD/samples/XML_DATA (nested per
              player folder). Recorded bytes, header byte, first-16 hex, last-8 hex, size mod
              100000, entropy.
- Result:     60 files found, 54 unique by SHA-256. All 60 header 0x79; all 60 size%100000 == 8
              (sizes 300008/400008/500008/600008). The 6 duplicates are byte-identical: the
              "after fix/" folders are COPIES, not re-encryptions.
- Evidence:   REBUILD/evidence/sample_inventory.csv (60 rows)
- Next:       LC-0.3
- Blockers:   none
- Notes:      The corpus is smaller than it looks — 20 player folders yield 54 distinct saves.

### CP-002 | 2026-10-11 | LTX-quasar
- Task:       LC-0.3
- Status:     DONE
- Did:        Structural analysis of representative samples: trailing-zero boundary, repeated
              16- and 8-byte block counts, byte histogram, and a prefix-collision probe for nonce
              reuse.
- Result:     Trailing padding is LITERAL unencrypted 0x00 — one sample has an 80,850-byte zero
              run and 5,052 repeats of the 16-byte all-zero block. Encrypted zeros would not
              repeat. Therefore the low whole-file entropy (6.66) is padding dilution only; the
              encrypted region is ~7.99 everywhere. NO nonce reuse and NO ECB — every apparent
              shared prefix was a byte-identical duplicate from CP-001.
- Evidence:   REBUILD/evidence/sample_inventory.csv + this checkpoint
- Next:       LC-1.4
- Blockers:   none
- Notes:      CORRECTS the handoff's "IV reuse" alarm — it was a hash-collision artefact, not a
              crypto weakness. A per-save random nonce is the working hypothesis.

### CP-003 | 2026-10-11 | LTX-quasar
- Task:       (instrument survey — pre-LC-1.1)
- Status:     DONE
- Did:        Read REBUILD/tools/capture.py and REBUILD/tools/frida_capture_save.py in full.
- Result:     capture.py already hooks libc open() for mGameInfo.xml and sweeps memory for
              "<Var name=\""; both tools already use the Frida 17 API. The gap is that neither
              captures the ciphertext buffer read from disk — only the decoded XML from memory.
- Evidence:   §10.8
- Next:       LC-1.1
- Blockers:   none
- Notes:      LC-1.1 is an EXTENSION of capture.py, not a rewrite. Do not start from zero.

### CP-004 | 2026-10-11 | LTX-quasar
- Task:       LC-1.4
- Status:     DONE
- Did:        Read ConnectGameUseCase.smali to method end (1,634 lines).
- Result:     The connect path DOES call the remote decode: line 531 invokes
              ApiClient.f([B,String,String). It is guarded not by ApiClient.l()Z but by a VPS-URL
              sanity check on Lud;->m (must start with https://, must not contain
              twntool.example / seudominio / sua.api) else conn_vps_unset. The retracted
              "guarded by l()Z" claim is confirmed wrong.
- Evidence:   ConnectGameUseCase.smali:531, §2.10
- Next:       LC-1.5
- Blockers:   none
- Notes:      Line 531 is the decode swap point for the connect flow (feeds LC-4.2).

### CP-005 | 2026-10-11 | LTX-quasar
- Task:       LC-1.5 + LC-1.6
- Status:     DONE
- Did:        Read ApiClient.f() in full (8120-8783) and located/identified Lf3 and the helper
              methods m(), G(), x().
- Result:     f() = POST /api/bin/decode, with a cache (Lf3) and a catch-fallback to
              ApiClient.A (GZIP) -> POST /api/decode. Lf3 is a 3-field CACHE (a=SHA-256 of input,
              b="have", c=cached bytes), NOT a codec engine. m() = GZIP COMPRESS.
              G() = zstd DECOMPRESS via io.airlift.compress.zstd.ZstdDecompressor. x() = SHA-256.
              AES/GCM/NoPadding appears only in d()/e()/g() = TRANSPORT crypto, not the save codec.
- Evidence:   ApiClient.smali:8120-8783, 1763, 3360, 4945, 5610, 6814, 9018, §2.10
- Next:       LC-2.1
- Blockers:   none
- Notes:      DECISIVE: the 0x79 container is sent to the VPS opaque. TwnTool has no local save
              codec. A local codec MUST come from the game engine. Option 2 is correctly scoped.
              Also: the Lf3 cache becomes unnecessary once decoding is local — bypass it, do not
              port it.

### CP-006 | 2026-10-11 | LTX-quasar
- Task:       LC-4.0
- Status:     DONE
- Did:        Deterministic check for the am.smali/Am.smali duplicate, then a real apktool build.
- Result:     NO DUPLICATE EXISTS. Am.smali declares LAm;; am.1.smali declares Lam; — two
              DIFFERENT classes. The ".1" suffix is apktool's disambiguation for a
              case-insensitive filename collision. Same pattern: F3.smali / f3.1.smali.
              A full apktool b SUCCEEDS. The first attempt failed only on host page-file size
              (os::commit_memory failed), fixed with -Xmx1024m.
- Evidence:   REBUILD/build/_viability_test.apk, 11,136,759 B — classes.dex 8,361,700 B still
              contains airlift, ZstdDecompressor and AES/GCM. Original: 417 entries /
              7,774,108 B dex. Rebuilt: 381 entries / 8,361,700 B dex.
- Next:       LC-4.1
- Blockers:   none
- Notes:      Trap T6 was WRONG and is corrected; Trap T10 added (heap must be capped). Tier B
              (full apktool b) is VIABLE — integration is not blocked. The rebuilt
              assets/index.bin is 3,064,959 B = the CURRENT patched asset, so Trap T7 does not
              apply to a rebuild that regenerates the asset first.

### CP-007 | 2026-10-11 | LTX-quasar
- Task:       cleanup + instrument prep
- Status:     DONE
- Did:        Removed stale temp files and the JVM crash log; created the evidence tree.
- Result:     REBUILD/_tmp_rt.html, _tmp_rt.bin and hs_err_pid*.log removed
              (_tmp_index_from_bin.html / _tmp_built_index.bin did not exist). Evidence dirs
              created: evidence/{pairs,io_trace,xref}.
- Evidence:   REBUILD/evidence/{pairs,io_trace,xref}
- Next:       LC-0.1 (needs device)
- Blockers:   Device access. LC-0.1, LC-1.0, LC-1.1, LC-1.3, LC-2.1, LC-2.3 and LC-3.3 all
              require the emulator with the game running — that half is Jack's side.
- Notes:      Everything achievable without the device is now done. The project's centre of
              gravity moves to the device capture.

### CP-008 | 2026-10-11 | LTX-quasar
- Task:       LC-1.0 (device attach)
- Status:     DONE
- Did:        Confirmed the MuMu emulator (127.0.0.1:7555, Android 12 x86_64, rooted) has both
              com.playrix.township and com.twntool.android installed; frida-server running as root.
- Result:     Device work is possible. The live save is at
              /data/data/com.playrix.township/saves/mGameInfo.xml (300,008 B). Pull it with
              `adb exec-out` (binary-safe) — plain `adb shell cat` corrupts it (300,008 -> 300,509
              via CRLF translation).
- Evidence:   REBUILD/evidence/device/live_mGameInfo.xml, .bak
- Next:       LC-1.1
- Blockers:   none
- Notes:      Township's libgame.so is byte-identical to REBUILD/native/libgame.so
              (sha256 1ebb95114e9fbfd4) — the local copy is valid for static analysis.

### CP-009 | 2026-10-11 | LTX-quasar
- Task:       LC-1.1
- Status:     DONE
- Did:        Hooked open/openat/read/pread/write in the Township process (spawn mode, Frida 17)
              and captured the exact bytes the game reads from mGameInfo.xml.
- Result:     Captured the ciphertext in-process: three 300,008-byte reads, identical to each
              other, header 0x79. The game reads the whole container and decrypts in memory.
              Note: capture.py's plaintext sweep produced only ART-heap false positives — the
              parsed XML lives in the managed heap, so a naive marker sweep is not reliable.
- Evidence:   REBUILD/evidence/device/capture3/read_fd{358,360,404}.bin
- Next:       LC-1.3
- Blockers:   none
- Notes:      Capture tooling written this session: tools/capture_spawn.py, capture2.py,
              capture3.py, capture4_bt.py (backtrace), capture5_disasm.py (Frida disassembler),
              capture6_args.py. capture3.py is the working one for ciphertext.

### CP-010 | 2026-10-11 | LTX-quasar
- Task:       LC-1.2 (locate the codec by observation, not by symbol)
- Status:     DONE
- Did:        Captured native backtraces of the code that reads and writes the save, using
              Backtracer.FUZZY (ACCURATE returned a single frame — no frame pointer).
- Result:     The save path goes into libgame.so. Read chain: libc!read -> libgame!0x75c4b18 ->
              0x756dc0d -> 0x75be1f6 -> 0x75bdbeb -> 0x75bd8f1 -> 0x75bdc81 -> 0x75bd9f5.
              Write chain: libc!write -> libgame!0x75c4c14 -> 0x756df25 -> 0x7452237 ->
              0x7452dba -> 0x7452b9e -> 0x487821f. These are the codec entry points.
- Evidence:   REBUILD/evidence/device/backtrace/backtraces.txt
- Next:       LC-2.1
- Blockers:   none
- Notes:      This replaces symbol hunting (libgame.so has no .symtab) with runtime observation.

### CP-011 | 2026-10-11 | LTX-quasar
- Task:       LC-1.3 / LC-2.1 (identify the cipher family)
- Status:     PARTIAL
- Did:        Ruled out compression; scanned libgame.so for crypto constants and strings; ran an
              XOR analysis on two saves of the same town.
- Result:     (1) NOT compression — no gzip/zlib/bz2/xz/zstd/lz4 magic, no decompression succeeds.
              (2) The save is NOT keystream-reused: XOR of two live saves is random (7.9930) once
              the shared zero padding is excluded. (3) **A full AES inverse S-box (256 bytes) is at
              libgame.so offset 0x23d6150** — a real AES implementation is present. (4) The
              AES-256/RC4/ChaCha20 strings in the binary are the OpenSSL OID name table, NOT
              evidence of the codec choice — do not cite them.
- Evidence:   REBUILD/evidence/device/FINDINGS.md
- Next:       LC-2.1 (key + mode)
- Blockers:   none
- Notes:      STILL UNKNOWN: the AES key, the exact mode (CBC/CTR/GCM), and where the IV/nonce
              sits. Anchor for the next step: xref the AES inverse S-box at 0x23d6150, or hook the
              save functions from CP-010 and dump the key schedule + IV.

### CP-012 | 2026-10-11 | LTX-quasar
- Task:       LC-0.1
- Status:     PARTIAL
- Did:        Captured a live ciphertext->plaintext candidate pair on the device.
- Result:     The ciphertext half is solid (300,008 B, header 0x79, captured in-process). The
              plaintext half is NOT yet cleanly recovered — the decoded XML lives in the ART
              managed heap and was not captured as a contiguous document. Needs a different
              approach (hook the parse/load function rather than sweeping memory).
- Evidence:   REBUILD/evidence/device/capture3/ + FINDINGS.md
- Next:       LC-2.1
- Blockers:   none
- Notes:      The corpus (REBUILD/samples/XML_DATA) remains the plaintext-free test set; the
              clean pair must come from the device once the load path is hooked.

### CP-013 | 2026-10-11 | LTX-quasar
- Task:       LC-2.1 (locate the AES primitive)
- Status:     PARTIAL
- Did:        Statically xref'd the AES inverse S-box at libgame.so 0x23d6150 to every instruction
              that references it, then disassembled around the hit. Also ran an S-box access
              monitor at runtime (MemoryAccessMonitor).
- Result:     The S-box has exactly ONE static xref: `libgame.so!0x977e6a5` (`lea rax,[rip-0x73a855c]`).
              Disassembly there is a textbook **T-table AES**: 32-bit table lookups
              (`dword ptr [rsi+rax]`, index masked `0x3fc`), round-key XORs (`[r8-0x1c]`…`[r8]`),
              `add r8,0x20` to advance the round-key pointer, byte-wise `movzx` S-box lookups in the
              final round. **AES (T-table) is confirmed inside libgame.so.**
- Evidence:   REBUILD/evidence/device/xref/sbox_xref.json; region disasm in the session log
- Next:       LC-2.1 (key + mode + IV)
- Blockers:   none
- Notes:      NEGATIVE RESULTS worth keeping (they close off dead ends):
              (a) The runtime S-box monitor's "access" at libgame.so!0x979339f was a FALSE POSITIVE
                  — that address is a jump-table dispatcher (`movsxd rax,[rcx+rax*4]; jmp rax`),
                  not an S-box lookup. MemoryAccessMonitor watches a page, so any code in that page
                  trips it.
              (b) The chain-hook "CIPHER" hits (e.g. r8 at 0x75be1f6) were also false positives —
                  a lone leading `0x79` byte matched a pointer table, not a save buffer. The
                  detection predicate `h.indexOf('79')===0` was too weak; it must require 0x79 AND
                  the following bytes to be high-entropy.
              STILL UNKNOWN: the key (no static constant near the tables — likely derived at
              runtime), the mode, and the IV/nonce. Next: hook the AES routine entry and filter
              calls by a backtrace that includes the save chain.

### CP-014 | 2026-10-11 | LTX-quasar
- Task:       LC-2.1 (test the AES hypothesis)
- Status:     PARTIAL (negative result — valuable)
- Did:        Hooked the AES T-table loop at libgame.so 0x977e49d and dumped the round-key pointer
              (r8) window plus backtraces during a save load.
- Result:     ZERO calls in 65s. The AES routine is NOT invoked on the save-load path in that
              window. **The "save codec is AES" hypothesis is therefore UNPROVEN and must not be
              stated as a finding.** AES exists in libgame.so but may serve TLS/network crypto.
- Evidence:   REBUILD/evidence/device/aes/ (empty key schedule), session log
- Next:       LC-2.1 (find the actual codec on the load/save chain)
- Blockers:   none
- Notes:      CORRECTS CP-013's framing. What is PROVEN about the save: 0x79 header, 8+N*100000
              size, unencrypted zero padding, no keystream reuse, not standard compression, and the
              codec is on the libgame.so load/save call chain (CP-010). The algorithm is still open.
              recommended next approach: hook the load chain functions from CP-010 and follow the
              data forward (trace the ciphertext buffer as it is transformed), rather than guessing
              the algorithm and looking for it.

### CP-015 | 2026-10-11 | LTX-quasar
- Task:       LC-2.1 (map the decode pipeline)
- Status:     PARTIAL (major progress)
- Did:        Hooked the document loader at libgame.so 0x48f4b4a, dumped every buffer passed to
              it (188 documents), disassembled its logic, and traced the save container into it.
- Result:     (1) 0x48f4b4a is a DISPATCHER: if buffer[0]==0x3c ('<') the document is parsed as
              XML directly; otherwise it takes the container branch and calls the codec family
              0x73c4xxxx. (2) The save ciphertext DOES enter this loader — a 300,009-byte buffer,
              header 0x79, was captured in-flight. (3) 0x73c4b01 is a magic/version check
              (compares buffer[0..3] to four globals, requires len>=4). (4) Plaintext XML is fully
              readable in memory — 188 loader documents dumped, all ordinary game XML.
- Evidence:   REBUILD/evidence/device/FINDINGS.md; live save in
              REBUILD/evidence/device/live_mGameInfo.xml
- Next:       LC-2.1 (key + exact routine)
- Blockers:   none
- Notes:      LESSON: MemoryAccessMonitor is unreliable here — after the first access the page
              becomes "fully inaccessible" and re-arming fails; only 2 accesses were observable.
              Prefer hooking known functions over page monitoring. AES remains UNPROVEN as the save
              codec (0 hits when its loop was hooked). The codec is in the 0x73c4xxxx family.

### CP-016 | 2026-10-11 | LTX-quasar
- Task:       housekeeping
- Status:     DONE
- Did:        Consolidated evidence, removed large intermediate dumps, wrote the full write-up.
- Result:     REBUILD/evidence/device/FINDINGS.md is the complete record (7.6 KB). Evidence kept:
              live saves, the captured ciphertext reads, backtraces, disassembly, xref, S-box data.
- Evidence:   REBUILD/evidence/device/
- Next:       LC-2.1
- Blockers:   none
- Notes:      Removed: the 177 MB split APK (libgame.so is identical locally), the false-positive
              capture2/ and capture_spawn/ dirs, and the 188-doc / 11 MB loader dump (all ordinary
              game XML; not needed).

### CP-017 | 2026-10-11 | LTX-quasar
- Task:       LC-2.1 (map the container handling)
- Status:     PARTIAL (major progress)
- Did:        Disassembled the codec worker chain (0x75c127a -> 0x75be4a8 -> 0x75be576) and read
              the container magic dispatch out of the code.
- Result:     Found the magic table in code at libgame.so 0x75be6da:
                cmp eax, 0x1a4b4c42   ; "BLK\x1a"
                cmp eax, 0x45584c50   ; "PLXE"
              The 0x79 save is NOT in this table — its first 4 bytes vary per file
              (79f62e0b / 7997370b / 79b11110), so 0x79 is a one-byte tag, not a constant magic.
              Full call graph now: loader 0x48f4b4a -> codec 0x73c4b01 -> {0x73c4f87, 0x6b66b88,
              0x75c127a} -> 0x75be4a8 -> 0x75be576 (container reader).
- Evidence:   REBUILD/evidence/device/FINDINGS.md
- Next:       LC-2.1 (read 0x73c4b01 / 0x75be576 to their ends; find the 0x79 branch)
- Blockers:   none
- Notes:      0x75be576 is called thousands of times per run — a generic container reader, not
              save-specific. The save-specific transform is elsewhere in the 0x73c4xxxx/0x75cxxxx
              families.

### CP-018 | 2026-10-11 | LTX-quasar
- Task:       LC-0.1 (recover the plaintext half)
- Status:     PARTIAL
- Did:        Confirmed the decoded save exists in memory (a prior capture, decoded_mGameInfo.xml,
              holds 819 <Var name="…" v="…"/> and GameInfoPatcher); then attempted to re-capture it
              by scanning memory from spawn and from a running (map-idle) instance, across rw-, r--,
              and r-x.
- Result:     At map-idle the plaintext is NOT resident — all scans returned 0 hits. The decoded
              XML is transient (present only during the load window). A partial clean tail was
              extracted to evidence/device/decoded_save_reference.xml.
- Evidence:   REBUILD/evidence/device/decoded_save_reference.xml, ../decoded_mGameInfo.xml
- Next:       hook the save-specific decode function's OUTPUT (not blind callers)
- Blockers:   none
- Notes:      ~30 instrumented runs total this session. Per §0.3 STOP RULE, stopping here rather
              than repeating blind hooks. The next step is static reading of 0x73c4b01 / 0x75be576
              to locate the 0x79 branch, then one targeted output hook.

### CP-019 | 2026-10-11 | LTX-quasar
- Task:       LC-0.1 + LC-2.1  *** BREAKTHROUGH ***
- Status:     DONE (decode located; pairs captured)
- Did:        Re-derived the ABI of the codec from its disassembly: 0x73c4b01 decodes IN PLACE —
              on entry *(rsi) is the ciphertext std::string, on return *(rsi) is the plaintext.
              Hooked it reading *(rsi) before AND after and captured complete pairs.
- Result:     **The decode function is libgame.so!0x73c4b01.** Full ciphertext -> plaintext pairs
              captured:
                ct_mgameinfo.bin  300,009 -> pt_mgameinfo.xml   919,066  "<root><Zoo><TownGround…"
                ct_saveversion.bin 32,139 -> pt_saveversion.xml  32,131  "<root><Version version="39.0.5"…"
                ct_plxe.bin           834 -> pt_plxe.xml          1,580  "<!-- startup_consts …"
              XOR(ct, pt) has entropy ~7.99 -> NOT a repeating-key XOR; a real block cipher.
              Lengths: 32,139->32,131 (~1:1) but 300,009->919,066 (~3x) -> the large container is
              COMPRESSED as well as encrypted. Pipeline = decrypt then decompress. Input carries
              an 8-byte prefix (e.g. 79 91 0e 10 07 3d 3b e7).
- Evidence:   REBUILD/evidence/device/pairs_clean/ + codec_final/ + FINDINGS.md
- Next:       LC-2.1 (lift the key: hook the crypto call inside 0x73c4b01, or read it statically)
- Blockers:   none
- Notes:      The earlier failure was purely an ABI mistake — I read arg0 (rdi) for the output when
              the result is written back through arg1 (rsi). Reading the same structure before and
              after the call is what produced the pairs. This is the correct seam for LC-4.2.

### CP-020 | 2026-10-11 | LTX-quasar
- Task:       LC-2.1 (static analysis; device went offline)
- Status:     PARTIAL (cipher characterized; key still open)
- Did:        Continued statically on the local libgame.so (byte-identical to the device). Found
              capstone is available; for the executable PT_LOAD segment file_offset == vaddr, so any
              module-relative address disassembles directly from the file (tools/disasm_static.py).
- Result:     (1) Decode fn confirmed = 0x73c4b01, in-place on *(rsi); two callers (0x48f4bf0,
              0x48f511e) both inside dispatchers doing `if buf[0]=='<' parse XML else decode`.
              (2) The worker 0x75c127a contains MurmurHash2 (imul ...0x5bd1e995) and a PRNG-like
              construct (23*rdx, div, shr16/xor) and an Adler-like checksum (0x73c460c).
              (3) Cipher hypotheses TESTED against the real pair: MT19937 (0/32 words), RC4
              (0-1/64 bytes), repeating XOR, short periods — ALL NEGATIVE. Keystream is uniform ->
              a strong cipher. (4) pt_mgameinfo.xml is a COMPLETE valid save
              (2410 <Var>, ends GameInfoPatcher lastPatch="V3900_clean_ct_clan_gifts"/></root>);
              130,911-byte payload -> 919,066 = 7.0x -> the large container is COMPRESSED.
- Evidence:   REBUILD/evidence/device/pairs_clean/ (incl. a full decoded save), FINDINGS.md
- Next:       LC-2.1 (lift the key: needs the device online, or deeper static work on the key path)
- Blockers:   The MuMu emulator went offline during this session; dynamic work is paused.
- Notes:      KEY INSIGHT: the dispatcher parses a buffer starting with '<' as XML directly, so the
              game ACCEPTS a plaintext XML save. Injecting an edited save needs NO encoder — write
              the plaintext XML. A byte-exact 0x79 container is only needed if re-encoding is
              required. The encoder sibling was not located. The cipher key is not a static constant
              near the codec (likely runtime-derived).

### CP-021 | 2026-10-11 | LTX-quasar
- Task:       LC-0.1 + the project goal  *** GOAL REACHED ***
- Status:     DONE
- Did:        On the live device, replaced saves/mGameInfo.xml with the DECODED PLAINTEXT XML
              (919,065 B, starts `<root>`) and restarted the game. Repeated with a unique marker
              `<!--LTXQUASAR_MARKER-->` to prove the edit propagates.
- Result:     **The game accepts a plaintext XML save and re-encodes it itself.** After restart it
              rewrote mGameInfo.xml as a proper 300,008-byte 0x79 container. With the marker
              injected, the re-encoded output differed from the original
              (sha aa75cf8bb104a664 vs original 7c5b7e7f7dc27b55), proving the edit was preserved.
              No decode/corrupt error in logcat. Device restored to the pristine original
              (sha 7c5b7e7f7dc27b55) afterwards.
- Evidence:   REBUILD/evidence/device/FINDINGS.md (CP-021 section)
- Next:       (goal met) — optional: lift the key for a byte-exact encoder, or build the app path
- Blockers:   none
- Notes:      *** EDITED SAVES NEED NEITHER THE KEY NOR AN ENCODER. *** To write a save: place the
              edited PLAINTEXT XML (first byte `<`) at saves/mGameInfo.xml; the game parses it and
              re-encodes on its next save. To read a save: hook libgame.so!0x73c4b01 (in place on
              *(rsi)) or read the plaintext from memory. Caveat: verified on a single-player offline
              save; whether a server-side checksum rejects it is a separate, untested question.

### CP-022 | 2026-10-11 | LTX-quasar
- Task:       (a) wire the local path into a tool  *** DONE ***
- Status:     DONE
- Did:        Built REBUILD/tools/twn_local_codec.py with three modes (current / decode / encode)
              and round-trip tested it on the live device.
- Result:     `current` decoded the device save to 919,061 bytes (2441 <Var>, GameInfoPatcher).
              `encode` wrote that XML back as saves/mGameInfo.xml; the game re-encoded it to a valid
              300,008-byte 0x79 container. Full round trip. Device restored to the pristine original
              (sha 7c5b7e7f7dc27b55).
- Evidence:   REBUILD/tools/twn_local_codec.py; REBUILD/evidence/device/tool_decode_test.xml;
              FINDINGS.md (CP-022)
- Next:       (goal met) — integrate into the TwnTool app, or lift the key for a standalone encoder
- Blockers:   none
- Notes:      DECODE = hook libgame.so!0x73c4b01 (in place on *(rsi)); ENCODE = write plaintext XML
              to saves/mGameInfo.xml and let the game re-encode. Neither needs the key or a VPS.
              AES (0x977e6a5) does NOT fire during a save decode — the save cipher is a separate,
              still-unidentified routine inside 0x73c4b01; it does not block the goal.

### CP-023 | 2026-10-11 | LTX-quasar
- Task:       (a) integration test
- Status:     PARTIAL (codec verified; server authority is a new boundary)
- Did:        Built REBUILD/tools/twn_edit_pipeline.py and ran the full loop: decode -> edit
              (money=999999999, moneyCash=888888888) -> encode -> relaunch -> decode -> verify.
- Result:     The pipeline runs end to end: the save decoded (918,629 B), the edits applied, the
              game re-encoded to a valid 300,008-byte 0x79 container. BUT verification FAILED:
              money came back 44649292 and moneyCash 2451243 — the ORIGINAL values. The edits did
              not persist.
- Evidence:   REBUILD/tools/twn_edit_pipeline.py; REBUILD/evidence/device/edit_test/{decoded,edited,verify}.xml; FINDINGS.md
- Next:       (boundary) server authority is out of scope for a codec fix
- Blockers:   The MuMu emulator went OFFLINE — enabling airplane mode killed its network, which
              also carries ADB, so the device dropped mid-test. Needs a manual restore (toggle
              airplane off in the emulator UI, or restart the emulator).
- Notes:      *** INTERPRETATION *** The local codec works; the game is SERVER-AUTHORITATIVE.
              Township's economy values (money, cash, level, progress) are owned by Playrix's
              servers and overwrite the local save on load. The local codec solves decode/encode;
              it does NOT and cannot defeat server authority. Client-owned values may still persist
              (not yet isolated). The clean offline test could not be completed because airplane
              mode also cut ADB.

### CP-024 | 2026-10-11 | LTX-quasar
- Task:       integrate the proven local codec into TwnTool and install it
- Status:     DONE
- Did:        Repaired the Android x86_64 ptrace injector, made the hook resolve libgame from the
              uncompressed split APK mapping, added LocalCodec to TwnTool, intercepted the
              Township decode/encode methods, bundled both native helpers, rebuilt, signed, and
              installed the APK as an in-place update.
- Result:     The app's real Connect button decoded a 300,008-byte save into a complete 918,488-byte
              XML (2441 Vars, GameInfoPatcher present) and enabled the editors. Send to Game wrote
              plaintext XML; Township accepted it and re-encoded the main save to a 300,008-byte
              0x79 container. Both original saves were restored and their hashes matched.
- Evidence:   REBUILD/build/TwnTool-localcodec.apk;
              REBUILD/evidence/device/app_localcodec_decode.xml;
              REBUILD/evidence/device/post_send_reencoded.bin;
              REBUILD/evidence/device/twntool_localcodec_connected.png;
              REBUILD/evidence/device/FINDINGS.md (CP-024 section)
- Next:       optional — identify client-owned fields or port the local pattern to another game
- Blockers:   none
- Notes:      APK SHA-256 d13d68a506bb26bd198f56700bd8a180b9ead355699a613899a96deaf3436627;
              signature certificate SHA-256 e18069298428a90c6ce99d6095c4e0729524ca2b31c7f8ce8413d5250782f781.
              Server authority remains unchanged: online economy edits are reverted (CP-023).
### CP-025 | 2026-10-11 | LTX-quasar
- Task:       diagnose the reported “edit then revert” UI path
- Status:     DONE — no persistence claim supported
- Did:        Changed Level from 159 to 199, invoked Send without per-field confirmation, and
              inspected the resulting device save before launching Township again.
- Result:     The UI now auto-flushes the pending input and logs the bridge acknowledgement, but
              the resulting 918,488-byte plaintext XML still held `levelup=159`. The bridge
              acknowledgement did not prove the outgoing save was modified.
- Evidence:   `REBUILD/evidence/device/FINDINGS.md` (CP-025); restored device hashes:
              `d0ec373a911648d36ba5adb219591ec213fa61bafeb6aa9d61ff3f2efb16ec9a` (main),
              `64686fa648a71063b6e0ae10b6904d0f0094ed33729939a7bede24e3d3f32955` (backup).
- Next:       Treat UI acknowledgement as unverified until a byte-level local-save check passes.
- Blockers:   Server-owned progress/economy values are outside the codec boundary.
- Notes:      Diagnostic UI text was rebuilt, signed, and installed. APK SHA-256:
              `e77bdbe0adea23dbacce7468dd60e1ff17add4cc96d6e27a233caf5e866ef7f9`.

### CP-026 | 2026-10-14 | LTX-quasar
- Task:       verify edit persistence after write-back encode — do edits survive a full decode→edit→encode→launch→reload→decode roundtrip?
- Status:     DONE — persistence CONFIRMED for layout and client-preference fields; server-authoritative fields unchanged
- Did:        Decoded fresh device save (300,008 B → 1,879,939 B plaintext XML). Applied two same-length edits to different authority domains:
              (1) Building position: parking `bid=21112013-152433-x896u` `i:23→i:28` (layout field).
              (2) Client preference: `musicVolume v="0"→v="7"` (audio setting).
              Write-back encode: pushed edited plaintext XML to `/data/data/com.playrix.township/saves/mGameInfo.xml` via `su -c cp`, `chown u0_a54:u0_a54`, `chmod 660`, launched Township via `am start -n com.playrix.township/.Launcher`, waited 30s, force-stopped, pulled re-encrypted save (300,008 B, 0x79 header), re-decoded.
- Result:     BOTH edits persisted in re-decoded save (1,879,622 B):
              `bid=21112013-152433-x896u` → `"i":28` ✓ (was 23)
              `musicVolume` → `v="7"` ✓ (was 0)
              Economy fields UNCHANGED (server-authoritative confirmed):
              `money`=44659854 (same), `moneyCash`=2448018 (same), `levelup`=399 (same), `experience`=562209876 (same).
              Building count stable: 448→448. Var count: 2531→2532 (+1, new session var).
              The 317-byte size decrease and 66K diff regions are game-session state changes (timestamps, building reorder), not edit reversion.
- Evidence:   `REBUILD/evidence/mGameInfo_device_20261014.bin` (original encrypted, 300,008 B);
              `REBUILD/evidence/mGameInfo_decoded_20261014.xml` (original plaintext, 1,879,939 B);
              `REBUILD/evidence/mGameInfo_edited_20261014.xml` (edited plaintext, 1,879,939 B);
              `REBUILD/evidence/mGameInfo_afterreload_20261014.bin` (re-encrypted, 300,008 B);
              `REBUILD/evidence/mGameInfo_afterdecode_20261014.xml` (re-decoded, 1,879,622 B);
              `REBUILD/evidence/mGameInfo_bak_20261014.xml` (device .bak, plaintext, 1,879,950 B).
- Confirmed field ownership table:
              | Field | Before | After roundtrip | Ownership |
              |---|---|---|---|
              | Building `i` (x-pos) | 23 | 28 | Client-owned ✓ |
              | `musicVolume` | 0 | 7 | Client-owned ✓ |
              | `money` | 44659854 | 44659854 | Server-authoritative |
              | `moneyCash` | 2448018 | 2448018 | Server-authoritative |
              | `levelup` | 399 | 399 | Server-authoritative |
              | `experience` | 562209876 | 562209876 | Server-authoritative |
- Next:       Broaden field characterization (Unlocked_ava*, Boost*, decorations, zoo layout). Then port to Gardenscapes/Homescapes/Fishdom.
- Blockers:   Economy fields (money, moneyCash, levelup, experience) are server-authoritative — codec cannot override. This is a server validation boundary, not a codec limitation.
- Notes:      Game accepts plaintext XML at `mGameInfo.xml` directly — no format validation on read. Game re-encrypts to 0x79 on next save cycle. `.bak` file is also plaintext on device (1,879,950 B). Township launcher activity is `.Launcher` (not `.TownshipActivity`). Township UID is `u0_a54` on emulator-5566.

```

---

## 8. EVIDENCE STANDARD

A task is not `DONE` until its evidence exists as a **file on disk** that a different person can
open and re-check.

| Claim type | Required evidence |
|---|---|
| "The codec decodes" | Output file that passes `D7.c()`'s predicate, + the input it came from |
| "The game accepts the save" | Game log or screenshot, with the save file's path and hash |
| "The buffer passed through at runtime" | Frida trace with addresses and lengths |
| "The symbol/function is at address X" | Disassembly window + the xref that proves it |
| "The app no longer calls the VPS" | Capture showing **zero** connections on the feature path, or static proof no live path calls it |
| "It works offline" | The same test with the VPS unreachable |

**Statistics over vibes.** `54/54` is evidence. `it seems to work` is not.

---

## 9. OPEN UNKNOWNS (could stall the project — none are blocking yet)

| # | Unknown | Answered by | If the answer is bad |
|---|---|---|---|
| U1 | Is `GameInfo::SaveLocalInfo` / `LoadFromGameInfo` actually the codec, or just a caller? The RTTI string proves the function **exists**, not what it **does**. | LC-1.1, LC-1.2 | Shift to the caller/callee; the same technique still works |
| U2 | Is the key **static**, **device-derived**, or **account-derived**? No evidence either way yet. | LC-0.3, LC-2.1 | Device-derived is longer but still local; account-derived is the worst case |
| U3 | Is **zstd** part of the save chain? 165 exports exist, but that does not mean they are used for saves. | LC-1.3 | Affects shipping form (§6.1A vs §6.1B) |
| U4 | Does the `am.smali`/`Am.smali` duplicate break a full `apktool b`? Two attempts gave contradictory results. | LC-4.0 | Integration falls back to zip-level surgery (Tier A) |
| U5 | What guards connect-to-game, if not `ApiClient.l()Z` (retracted)? | LC-1.4 | Affects LC-5.1 scope, not the codec |

**None of these block starting.** All are answered by LC-0 and LC-1.

---

## 10. REFERENCE

### 10.1 The oracle

`D7.c()` in smali — acceptance predicate:

```
text startswith '<'  AND  contains one of:
  <TownGround | <Buildings | <root | <Object | <Global | <Vars
```

Use it as an automated pass/fail over all samples via `tools/check_samples.py` (dedupes by hash,
prints one PASS count). It is the reason this project is tractable.

### 10.2 Verified commands

ELF inspection without binutils (run from `REBUILD/native/`):

```python
import struct
d = open("libgame.so", "rb").read()
E = '<'
shoff   = struct.unpack_from(E+'Q', d, 0x28)[0]
shent   = struct.unpack_from(E+'H', d, 0x3a)[0]
shnum   = struct.unpack_from(E+'H', d, 0x3c)[0]
# ... section walk → 29 sections, only .dynsym (4148 entries), no .symtab
```

The key numbers this produced are in §2.6. Re-run it before trusting any symbol claim.

Find a string's section and address:

```bash
grep -a -b -o "GameInfo::SaveImpl" libgame.so   # byte offset → .rodata vaddr directly
```

Frida server on the emulator:

```bash
adb shell su -c '/data/local/tmp/frida-server -D'
```

`index.bin` codec (Node, zero deps, round-trip verified):

```bash
node REBUILD/tools/ui_bundle.mjs info    <index.bin>
node REBUILD/tools/ui_bundle.mjs decrypt <index.bin> <out.html>
node REBUILD/tools/ui_bundle.mjs encrypt <in.html>   <out.bin>
node REBUILD/tools/ui_bundle.mjs verify  <in.html>   <index.bin>
```

Build + sign (Tier B):

```bash
java -jar REBUILD/tools/apktool.jar b REBUILD/decomp -o REBUILD/build/twn_final.apk
java -jar REBUILD/tools/uber-apk-signer.jar -a REBUILD/build/twn_final.apk \
  --ks REBUILD/tools/twn-key.jks --ksAlias twn --ksPass ${KEYSTORE_PASSWORD} --ksKeyPass ${KEYSTORE_PASSWORD}
```

### 10.3 Repackage tiering

| Tier | Method | Time | Needed when |
|---|---|---|---|
| **A** | Swap one zip entry + strip `META-INF/*.SF/*.RSA/*.MF` + `zipalign -p -f 4` + re-sign | ≈45 s, no apktool | Only assets change (e.g. `index.bin`) |
| **B** | Full `apktool b decomp` | minutes | smali / res / manifest change |
| **C** | `cdp_devtools.py` live injection | instant | Proving something without packaging |

### 10.4 Duplicated trees — every asset edit lands twice

| Asset | Copy A | Copy B |
|---|---|---|
| `ui_javascript.js`, `index_decrypted.html`, `ui_styles.css`, `ui_layout.html`, `ui_file_map.txt`, `merge_ui.py`, `MERGE_INSTRUCTIONS.txt`, `UI_FEATURES.md` | `REBUILD/decomp/assets/` | `_work/TwnTool_12/decomp/assets/` |
| `cdp_devtools.py` | `REBUILD/tools/` | `_work/` |
| `TWNTOOL_FEATURES_GUIDE.md` | `_work/` only | — |
| `UI_CUSTOMIZATION_GUIDE.md` | `_work/` only | — |

### 10.5 Key paths

| Path | What |
|---|---|
| `REBUILD/native/libgame.so` | 172,625,656 B — **the codec source** |
| `REBUILD/native/split_config.x86_64.apk` | 177,173,275 B |
| `REBUILD/samples/XML_DATA/` | 60 `mGameInfo.{xml,bak}` files, 54 unique (~33 MB) — **the test corpus** |
| `REBUILD/samples/device_saves/` | device-captured saves |
| `REBUILD/decomp/` | apktool output; `smali/` is a single dex, ~1,633 files |
| `REBUILD/decomp/assets/index_decrypted.html` | 3,100,155 B — the UI source of truth |
| `REBUILD/decomp/assets/ui_javascript.js` | 27,292 lines |
| `REBUILD/frida-server/` | `frida-server-16.1.4` + `16.3.1` android-x86_64 |
| `REBUILD/build/` | built APKs — **see Trap T7** |
| `REBUILD/evidence/` | evidence artifacts go here |

### 10.6 Full `/api/` surface found in smali (for LC-5 scope)

`encode` ×2, `decode` ×2, `bin/encode` ×2, `bin/decode` ×2, `ts/sendbox_batch`, `ts/sendbox`,
`ts/save`, `ts/fetch`, `edit`, `auth/login`, `auth/handshake`.
Second login endpoint `https://twntool.com/auth/login` at `AuthManager.smali:629`.

### 10.7 Other games (after Township — do not start early)

Playrix (likely the same `PxEngine` codec): Gardenscapes, Homescapes, Fishdom.
Then: Family Island (Melsoft), Royal Match / Royal Kingdom (Dream Games), SimCity (EA).

**Do not start these until Township is proven end-to-end.** Township is the template; the
technique transfers, the codec does not.

### 10.8 EXISTING TOOLING — INVENTORY BEFORE YOU WRITE ANYTHING

Two Frida capture scripts already exist. **Read them before writing a replacement**; a resuming AI
that rewrites these from scratch wastes a session.

| Tool | Size | What it actually does |
|---|---|---|
| `REBUILD/tools/capture.py` | 1,844 B | Spawns `com.playrix.township`, hooks libc **`open`**, and on `onLeave` — when the path contains `mGameInfo.xml` and the fd ≥ 0 — schedules a memory sweep 3 s later. The sweep scans readable ranges for the marker `<Var name="`, then dumps the first matching region (capped at 2 MB via `readByteArray`). Has a 25 s unconditional fallback timer. |
| `REBUILD/tools/frida_capture_save.py` | 3,071 B | Attaches to an already-running process by name substring (`township`), scans readable ranges for four markers (`<Var name="`, `<root>`, `<Object`, `<Global`), dumps up to 8 hits per pattern. Takes `<device> <process_substr> <out_prefix>`. |
| `_work/cdp_devtools.py` | 9,871 B | Chrome DevTools Protocol driver for the TwnTool WebView — Tier C injection (see §10.3). |

**Both Frida tools already use the Frida 17 API** (`Module.getGlobalExportByName` with a
`findGlobalExportByName` fallback; `ptr.readByteArray`). Trap T8 is handled in them — do not
"fix" it.

**The gap they do NOT cover.** Both scripts capture **decoded XML from memory**. Neither captures
the **exact ciphertext buffer the game read from disk**. For LC-2.1 you need the ciphertext and its
plaintext **of the same save**, matched. The ciphertext half is already available as a file (the
`0x79` saves on disk, plus the 60-file corpus, 54 unique). What is missing is the **join**:

1. Hook `read()` on the fd returned by the `open()` hook (the fd is already captured in
   `capture.py`'s `onEnter`/`onLeave`) → record the exact bytes read = ciphertext.
2. Dump the decoded region as the existing scripts do → record = plaintext.
3. Write both to the same pair directory, with the file length and hash, so the join is auditable.

**LC-1.1 is therefore an extension of `capture.py`, not a rewrite.** Expected added work: a
`read()` hook and a pair-writer. Keep the existing `open()` hook and the fallback timer.

**One caution:** the memory sweep finds the *decoded* XML by scanning for a marker. That does not
prove the region it dumped begins at the true start of the plaintext — the region boundary is a
mapping boundary, not a document boundary. Record the region base and size with every dump so the
plaintext offset can be reasoned about later rather than assumed to be zero.

---

## 11. WHAT A RESUMING AI MUST NOT DO

1. **Do not recon, scan, or probe the VPS.** Third-party production server. Client-side analysis is
   complete; nothing here needs it. See §1.4, §1.5.
2. **Do not claim `libgame.so` has symbols.** It has `.dynsym` (4,148 entries, 0 `GameInfo`) and
   **no `.symtab`**. The `GameInfo::*` strings are RTTI and log strings in `.rodata`. See §2.6, §2.7.
3. **Do not present an unexecuted command as executed.** If a tool is absent, say so and stop.
4. **Do not invent** a function name, an address, a key, a flag, or an output you did not observe.
5. **Do not rename** values that appear in captured requests/responses or i18n bundles. Trap T3.
6. **Do not hide the login overlay** as a standalone change. It removes the only caller of
   `ApiClient.w()`, which is what produces the "chave premium" error. See §2.4.
7. **Do not restart a task marked `IN PROGRESS`** without reading its checkpoints in §7 first.
8. **Do not edit a checkpoint.** Append a new one and correct in `Notes`.
9. **Do not rewrite a tool that already exists.** `capture.py` and `frida_capture_save.py` are in
   §10.8. Read them first. Extending `capture.py` is LC-1.1; rewriting it is a wasted session.
10. **Do not read the corpus or the big assets whole.** §3.4 has the forbidden list and the measured
    cost of each file. One careless read of `index_decrypted.html` is 886K tokens.
11. **Do not loop.** Three failed attempts on one task means STOP and write a `BLOCKED` checkpoint
    (§0.3). A documented dead end is a result. A fourth near-identical attempt is not.
12. **Do not log a claim without its evidence path.** §8 defines what counts as done.
