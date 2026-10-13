# TWNTOOL — REBUILD PLAN & HANDOFF

> **Objective:** Rebuild TwnTool into a **fully-local** application (no remote dependency for the
> save decode/encode stage), with the **UI and features preserved 1:1**, across every game in the
> app's menu.
>
> **Document status:** Initial research complete (Township proven feasible). This document is the
> phased work map plus a handoff for the next AI/engineer.
>
> **Last updated:** 2026-10-11

---

## 0. TL;DR — READ THIS FIRST

| Question | Answer |
|---|---|
| Can the UI/features be rebuilt 1:1? | ✅ Yes, effectively free — an apktool rebuild does not alter HTML/JS/CSS |
| Can the app run without an interactive login? | ✅ Yes — the login screen is already hidden; a session can be seeded locally |
| Can decode/encode run without the remote service? | ❌ **No.** Decode/encode is 100% backend; session handling is independent of the APK |
| Is "fully local" realistic for one game (Township)? | ✅ Yes — 70% complete |
| Is "fully local" realistic for 8 games at once? | ⚠️ **Not one project — that is 8 separate RE projects.** Estimate: months |

**Strategy:** do not attempt all 8 games at once. **Finish Township first** as the template, then
replicate per game.

---

## 1. APPLICATION ARCHITECTURE

### 1.1 Components

- **UI:** Android WebView wrapping HTML/JS/CSS. UI bundle = `assets/index.bin` (encrypted,
  2.9 MB) → decrypted to `index_decrypted.html` (3.0 MB).
- **JS↔native bridge:** `assets/eel_shim.js` —
  `eel.fnName(args)` → `window.Android.fnName(cbId, ...args)` → Kotlin `TwnBridge` →
  callback via `window._androidCallback(cbId, data)`.
- **Native:** Kotlin, obfuscated (short class names: `Co`, `Xp`, `ApiClient`, …).
  **No native library** (no `lib/*.so`) → pure JVM.

### 1.2 LOCAL vs REMOTE SPLIT (CRITICAL)

| Function | Location | Remote required? |
|---|---|---|
| Entire UI (HTML/JS/CSS) | Local | ❌ |
| Save-editing logic (regex edits over XML) | Local | ❌ |
| 6 XML processing engines | Local | ❌ |
| Read/write save files on device | Local (root) | ❌ |
| **Save decode (container → XML)** | **Remote** | ✅ **required** |
| **Save encode (XML → container)** | **Remote** | ✅ **required** |
| Session / entitlement validation | Remote | ✅ required |

**Core problem:** decode and encode live on the backend. There is no codec inside the APK.
Those two stages are the only obstacle.

### 1.3 Original runtime flow

```
Encrypted save file (0x79...)
      │
      ├─[SEND TO BACKEND]─► backend decode ─► XML plaintext
      │                                            │
      │                            (device edits XML via regex)
      │                                            ▼
Game-ready file ◄─[SEND TO BACKEND]─ backend encode ◄─ edited XML
```

### 1.4 Target local flow

```
Encrypted save file
      │
      ├─[LOCAL CODEC]─► XML plaintext   (replaces the backend)
      │                                   │
      │                   (device edits XML via regex — UNCHANGED)
      │                                   ▼
Game-ready file ◄─[LOCAL CODEC]─ edited XML
```

The **only** box that changes is `[LOCAL CODEC]`. Everything else (UI + XML editor) is already
local and is used as-is.

---

## 2. REMOTE SERVICES (EVIDENCE)

### 2.1 Two distinct services

| Service | Function | Main endpoints |
|---|---|---|
| `https://twntool.com` | Session / entitlement | `POST /auth/login` |
| `https://179.198.115.135` | Save decode/encode backend (FastAPI + nginx) | `/api/auth/login`, `/api/auth/handshake`, `/api/bin/decode`, `/api/bin/encode`, `/api/decode`, `/api/encode` |

### 2.2 Live probes (tested 2026-10-11)

```
POST https://179.198.115.135/api/auth/login      → 401 {"detail":"Licença inválida"}
POST https://179.198.115.135/api/auth/handshake  → 403 {"detail":"Not authenticated"}
GET  https://179.198.115.135/api/auth/me         → 403 {"detail":"Not authenticated"}
GET  https://179.198.115.135/openapi.json        → 404 (docs disabled)
POST https://twntool.com/auth/login              → 400 {"ok":false,"error":"params"}
```

→ The handshake itself requires a valid token. There is no unauthenticated endpoint, no
self-registration, and no trial path.

### 2.3 Session establishment protocol (from `AuthManager.smali`)

**Request:**
```
POST https://twntool.com/auth/login
Body: {
  "key":  <activation value>,
  "hwid": <AuthManager.k()>,
  "ts":   <unix seconds>,
  "sig":  HMAC_SHA256(SECRET, key + "\n" + hwid + "\n" + ts),
  "client": "desktop",
  "dev_fp": <device fingerprint>,   // optional
  "hwid_prev": <previous hwid>      // optional
}
```

**Signature** (`AuthManager.p()`, ~line 4831):
```
sig = HMAC_SHA256( SECRET_hardcoded , key + "\n" + hwid + "\n" + ts )
```
There is **no per-device nonce and no attestation** in the signed material.

**Effective identifier** (`AuthManager.k()`, ~line 4410):
```
hwid = hwid_override (if set)  ELSE  device fingerprint (y1.i())
```
`hwid_override` is settable from the login screen's HWID field (`#hwid-input` →
`TwnBridge.set_hwid`) into SharedPreferences `twn_device`.

**Server-side status codes** (from `AuthManager.smali` ~212-224, ~510):
`device_limit` · `clone_detected` · `hwid_mismatch` · `hwid_missing` · `not_found` · `blocked` ·
`expired` · `key_expired` · `key_revoked` · `key_blocked` · `suspended` · `update_required` ·
`platform_mobile_required`

→ **Device-limit enforcement is server-side, keyed on the `hwid` field.**

### 2.4 Protocol observation — device identifier provenance

Recorded as a constraint on the rebuild, not as a recommended action.

Two properties follow directly from §2.3:

1. The `hwid` value is **client-supplied** — the client resolves it from an override store before
   falling back to a device fingerprint.
2. The signature covers `key + hwid + ts` with **no device attestation and no per-device nonce**,
   so it does not bind the identifier to the physical device.

Because the server enforces its device limit keyed on that field, any integrator must decide how
the field is populated. Three implementations exist:

| Method | Implementation |
|---|---|
| **A — configure per client** | Set the same identifier value on each client |
| **B — patched accessor** | `AuthManager.k()` returns a fixed value |
| **C — runtime instrumentation** | Hook `AuthManager.k()` under Frida |

**Constraints to record before choosing any of the three:**
- Concurrent sessions may be capped server-side — activating client 2 may displace client 1.
- `dev_fp` may be cross-checked, surfacing as `clone_detected`.
- A mismatch between the two fields risks account suspension.

**Conclusion for the rebuild:** the local-codec path (§4.1) removes the dependency on this
protocol entirely and is the preferred route. §2.4 is retained because it constrains how the
session module must be understood and modified.

---

## 3. SAVE FORMAT (EVIDENCE)

### 3.1 Township (RESEARCHED)

- **Files:** `mGameInfo.xml` (plus `mGameInfo.bak`, `LocalInfo.xml`, `GlobalVars.xml`, `StartupConsts.xml`)
- **Device path:** `/data/data/com.playrix.township/saves/`
- **Header:** first byte `0x79` ('y') = "encoded" marker
- **Size:** `8 + N×100000` (300008 / 400008 / 500008) → content + zero padding
- **Entropy:** ~7.7 (encrypted/compressed). **Not** zlib/gzip/bzip2/lzma (tested).
  No repeating XOR period → a real cipher.
- **Other container:** `PLXE` magic (GlobalVars / StartupConsts) = Playrix container format
- **Decoded XML validation** (`D7.c()`): text begins with `<` and contains one of
  `<TownGround`, `<Buildings`, `<root`, `<Object`, `<Global`, `<Vars`
- **Decoded structure:**
  `<root>...<Global>...<Var name="..." v="..."/>...</Global><GameInfoPatcher lastPatch="V3900_..."/></root>`
  (819 `<Var>` nodes observed)

### 3.2 Other games (NOT YET RESEARCHED — TODO)

Each game uses a different save format (different engine). See §7 for per-game tracking.

---

## 4. CRITICAL FINDING: LOCAL SUBSTITUTION, NOT REMOVAL

Every approach below was **tested and ruled out**:

| Approach | Result |
|---|---|
| Patch local session gate `AuthManager.o()Z` → `true` | ❌ Local gate only |
| Patch request builders `ApiClient.j()/k()` | ❌ Backend returns 403 |
| Supply synthetic session fields `h`/`n`/`o` | ❌ `Licença inválida` |
| Local service stub / redirect | ❌ Handshake requires a valid upstream token |
| Search the APK for an embedded codec | ❌ No native lib, no AES/zstd in smali |

**Conclusion:** decode/encode is backend-only. For fully-local operation we do **not** remove the
backend — we **replace** it with a codec taken from the game engine itself.

### 4.1 The one path that works without the remote service

`TwnBridge.d()` accepts **already-decoded XML** locally (class `LC7`) with no backend contact.
Only `0x79`-encoded input (`LB7`) is forwarded upstream.

→ If decoded XML is available, the Decode feature runs fully offline. (This covers the read
direction only; encode still needs a codec.)

---

## 5. GAME & ENGINE LIST

| # | Game | Engine (smali) | Developer | Save format | Local codec |
|---|---|---|---|---|---|
| 1 | **Township** | `TownshipEngine` + `TownshipBackupUseCase` | Playrix | `0x79` + `PLXE` (researched) | 🔶 Partial (decode from memory proven) |
| 2 | Gardenscapes | `PxEngine` | Playrix | ? | ❌ Pending |
| 3 | Homescapes | `PxEngine` | Playrix | ? | ❌ Pending |
| 4 | Fishdom | `FishdomEngine` | Playrix | ? | ❌ Pending |
| 5 | Family Island | `FamilyIslandEngine` | Melsoft | ? | ❌ Pending |
| 6 | Royal Match | `RoyalEngine` | Dream Games | ? | ❌ Pending |
| 7 | Royal Kingdom | `RoyalEngine` | Dream Games | ? | ❌ Pending |
| 8 | SimCity | `SimCityEngine` | EA | ? | ❌ Pending |

**Note:** 2, 3, 4 are all Playrix → likely share a codec (best candidates after Township).

**UI game selector:** `#px-select-overlay`, one card per game (`px_gsel_*_desc` in `ui_javascript.js`).

---

## 6. PHASED WORK PLAN

> **ACTIVE WORK IS TRACKED ELSEWHERE.** The phased plan below is the original map. The
> operational ledger — task IDs, per-task done-criteria, resume protocol, and the append-only
> checkpoint log — is in **`LOCAL_CODEC_PLAN.md`**. A resuming AI should read that file's §0.1
> (CURRENT STATE) first, then §4 (hard traps), then §6 (task ledger).
>
> Also note: `LOCAL_CODEC_PLAN.md` §2.6 **corrects** §6 of this document. `libgame.so` has **no
> `.symtab`** — 4,148 `.dynsym` entries, zero of them `GameInfo`. The codec names are RTTI and log
> strings in `.rodata`, not addressable symbols. Locating the codec is done by string xref and
> runtime observation, not by symbol lookup.

### Principles
1. **Finish one game** before moving on. Every phase must produce a working APK.
2. **Do not touch the UI/editor** — already local and correct. Focus only on `[LOCAL CODEC]`.
3. **Prove end-to-end** (decode → edit → encode → game loads the save) before switching games.

---

### PHASE 0 — Environment setup (once)

- [ ] Verify tools: `apktool.jar`, `uber-apk-signer.jar`, `twn-key.jks` (in `tools/`)
- [ ] Install frida-tools on Python 3.14: `python -m pip install frida-tools` (already: frida 17.23.3)
- [ ] Rooted emulator (MuMu `127.0.0.1:7555` / AVD `emulator-5566` — both Android 12 x86_64, rooted)
- [ ] frida-server 17.x on device: `adb shell su -c '/data/local/tmp/frida-server -D'`
- [ ] Target game installed in the emulator

**Path reference:**
- Decomp: `decomp/`
- Original APK: `TwnTool_12.apk`
- Evidence: `evidence/`

---

### PHASE 1 — Township: local decode (half done)

**Goal:** obtain decoded XML without the backend.

**Method A — from memory (PROVEN):**
- [x] Attach Frida to `com.playrix.township`
- [x] `Memory.scanSync` for `<Var name="`
- [x] Dump the region → fragment obtained (819 `<Var>`), saved at
      `evidence/decoded_mGameInfo_fragment.xml`
- [ ] **TODO:** reconstruct the full XML (fragments are non-contiguous in memory). Look for the
      whole document: starts at `<root` / `<?xml`, ends at `</root>`.
- [ ] **TODO:** locate `GameInfo::Load` / `SaveLocalInfo` in `libgame.so` (symbols intact) to dump
      the complete decoded buffer.

**Method B — hook the file read:**
- [x] `open("mGameInfo.xml")` → one 300008-byte read (still encoded `0x79...`)
- [ ] **TODO:** find the point where the buffer is already decoded (after the game's internal
      decrypt step).

**Phase 1 output:** complete decoded `mGameInfo.xml`.

---

### PHASE 2 — Township: local encode

**Goal:** turn edited XML back into a container the game will load.

- [ ] Find the save functions in `libgame.so` (symbols: `GameInfo::Save*`, `mGameInfo.async.tmp`)
- [ ] Hook the save function → capture (plaintext XML ↔ ciphertext) pairs for verification
- [ ] Two approaches:
  - **(a) Write-back hook:** feed edited XML to the game, let the game encode it, capture output
  - **(b) Port the codec:** reverse the algorithm → implement in-app (needs plaintext↔ciphertext
        pairs from the hook)

**Phase 2 output:** ability to write back an edited save.

---

### PHASE 3 — APK integration

- [ ] Replace the `ApiClient.f()` call (remote decode) with `[LOCAL CODEC]`
- [ ] Replace `C1`/`Lo` (remote encode) with `[LOCAL CODEC]`
- [ ] Seed the session locally so no interactive login is needed (optional — only if the backend
      remains in use for encode)
- [ ] Rebuild: `java -jar tools/apktool.jar b decomp -o build/twn_final.apk`
- [ ] Sign: `java -jar tools/uber-apk-signer.jar -a build/twn_final.apk --ks tools/twn-key.jks --ksAlias twn --ksPass ${KEYSTORE_PASSWORD} --ksKeyPass ${KEYSTORE_PASSWORD}`
- [ ] Install and test end-to-end

**Phase 3 output:** a fully-local Township APK that works.

---

### PHASE 4+ — Replicate to other games

For each game (priority order: Gardenscapes → Homescapes → Fishdom → the rest):
- [ ] Recon the save format (locate the save file on device, check header/magic)
- [ ] Repeat Phases 1–3 for that game
- [ ] Update the §5 table

---

## 7. TASK TRACKING (per game)

Copy this block when starting a game:

```
### Game: <name>
- Package: <com.xxx.yyy>
- Save path: <...>
- Format/magic: <...>
- Decode: [ ] not started [ ] in progress [ ] done
- Encode: [ ] not started [ ] in progress [ ] done
- APK integration: [ ] not started [ ] in progress [ ] done
- Status: <notes>
```

---

## 8. TOOLING REFERENCE

### Frida (verified working)

**Setup:**
```bash
adb connect 127.0.0.1:7555
adb shell "su -c '/data/local/tmp/frida-server -D'"
frida-ps -D 127.0.0.1:7555
```

**Memory scan (template):**
```python
import frida, time
dev = frida.get_device('127.0.0.1:7555', timeout=10)
pid = [p.pid for p in dev.enumerate_processes() if 'township' in p.name.lower()][0]
s = dev.attach(pid)
src = '''
function EXP(n){ try { return Module.getGlobalExportByName(n); } catch(e){ try { return Module.findGlobalExportByName(n); } catch(e2){ return null; } } }
var ranges = Process.enumerateRanges('r--');
for (var i=0;i<ranges.length;i++){
  var r=ranges[i], res;
  try { res = Memory.scanSync(r.base, r.size, "3c 56 61 72 20 6e 61 6d 65 3d 22"); } catch(e){ continue; }
  if (res.length) send({addr: res[0].address.toString(), base: r.base.toString(), size: r.size});
}
'''
sc = s.create_script(src)
sc.on("message", lambda m,d: print(m))
sc.load(); time.sleep(10)
```

**Frida 17 API notes:**
- `Memory.readByteArray` removed → use `ptr.readByteArray(len)`
- `Module.findExportByName` removed → use `Module.getGlobalExportByName`
  (fallback `findGlobalExportByName`)
- TwnTool's process name is **"TWN Tool"**, not the package name

### APK rebuild
```bash
java -jar tools/apktool.jar d TwnTool_12.apk -o decomp
# ... patch ...
java -jar tools/apktool.jar b decomp -o build/twn_final.apk
java -jar tools/uber-apk-signer.jar -a build/twn_final.apk --ks tools/twn-key.jks --ksAlias twn --ksPass ${KEYSTORE_PASSWORD} --ksKeyPass ${KEYSTORE_PASSWORD}
```

---

## 9. KEY LOCATIONS (smali reference)

| Symbol | File | Purpose |
|---|---|---|
| `AuthManager.o()Z` | `com/twntool/auth/AuthManager.smali` | Local session gate (patched to `true`) |
| `AuthManager.k()Ljava/lang/String;` | `AuthManager.smali` ~4410 | Effective device identifier (override vs device) |
| `AuthManager.p(String,String,J)String` | `AuthManager.smali` ~4831 | Request signature (HMAC) |
| `AuthManager.a(...)` | `AuthManager.smali` ~609 | Session request builder |
| `ApiClient.f([B,String,String)O6` | `com/twntool/network/ApiClient.smali` ~8120 | Remote decode entry |
| `ApiClient.d(...)` | `ApiClient.smali` ~5293 | Encrypted HTTP POST |
| `ApiClient.j()/k()/n()` | `ApiClient.smali` ~9899/10103/10194 | Session / handshake |
| `TwnBridge.d(TwnBridge,String,[B)` | `com/twntool/android/bridge/TwnBridge.smali` ~2570 | Load donor XML (local `LC7` / remote `LB7`) |
| `D7.c([B)Z` | `D7.smali` | Township save validation |
| `TownshipEngine.f([B)LinkedHashMap` | `com/twntool/township/TownshipEngine.smali` ~17010 | Parse decoded XML |
| `ConnectGameUseCase` | `com/twntool/game/ConnectGameUseCase.smali` | Connect flow |
| `Xp` (ed_decode_file) | `Xp.smali` | Decode-file flow |

---

## 10. EVIDENCE / ARTIFACTS

| Artifact | Location |
|---|---|
| Decompiled APK | `decomp/` |
| UI decrypted | `decomp/assets/index_decrypted.html` |
| UI JS | `decomp/assets/ui_javascript.js` |
| Decoded save fragment (Township) | `evidence/decoded_mGameInfo_fragment.xml` |
| Memory region sample | `evidence/region_head_0x7f9bc8206000.bin` |
| Township save samples (90 files) | `samples/XML_DATA/` |
| Device saves | `samples/device_saves/` |
| Township game APK (split) | `native/split_config.x86_64.apk` (177 MB) |
| `libgame.so` | `native/libgame.so` (172 MB, symbols intact) |
| Original APK | `apk/TwnTool_12.apk` |
| NoLogin build (earlier output) | `build/TwnTool_12_NoLogin-aligned-debugSigned.apk` |

---

## 11. RISKS & NOTES

1. **Codec is version- and possibly account-keyed** — if the cipher is keyed per account, a reversed
   codec goes stale on game update. Township is versioned: `GameInfoPatcher lastPatch="V3900..."`.
2. **Game anti-tamper** — Playrix performs signature checks. Repacking the game (frida-gadget) will
   likely fail.
3. **Root required** for Route A (instrumenting the game). The original app also requires root, so
   this adds no new burden.
4. **"Fully local" ≠ deleting the backend** — it replaces the backend with the game's own codec.
5. **Do not attempt all 8 games at once** — that produces 8 half-finished projects.
6. **Scope: 8 games / 6 engines** — different developers per engine, so no shared codec
   (except among the Playrix titles).

---

## 12. HANDOFF — FOR THE NEXT AI/ENGINEER

**Context you need:**
- This is a **save-codec reverse-engineering project**, not merely an APK rebuild.
- The UI/editor is **already local** — leave it alone.
- The entire job is replacing `[LOCAL CODEC]` in the decode/encode flow.
- **Township is the template.** Finish it first, then replicate.

**First steps:**
1. Read `§3.1` (Township format) + `§6 PHASE 1` (decode).
2. Run Frida to capture the complete decoded save (see `§8`).
3. Locate the save/load functions in `libgame.so` (symbols intact — use `nm`/`readelf`/Ghidra).
4. Build plaintext↔ciphertext pairs → use them to reverse the codec.

**Do not repeat:**
- Do not attempt to remove the remote stage by patching the APK (proven ineffective — §4).
- Do not decode assuming standard compression (already tested — §3.1).

**Open questions:**
- Is the decoded save present intact in a single memory buffer? (fragments observed separately —
  needs tracing)
- Does the Township codec also cover Gardenscapes/Homescapes/Fishdom? (needs checking)
- Is the cipher keyed per account? (needs verification against two accounts)

---

*This document is alive — update it as each phase completes. Do not delete verified findings; mark
them instead.*
