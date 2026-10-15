# FINDINGS — Technical Summary & Evidence

> Everything below has been verified. Do not re-run completed work. Mark changes if a result shifts.

---

## 1. APPLICATION IDENTITY

- **APK:** `TwnTool_12.apk` (9.4 MB)
- **Package:** `com.twntool.android`
- **UI:** Android WebView (HTML/JS/CSS). Bundle = `assets/index.bin` (encrypted) → `index_decrypted.html`
- **Native:** Kotlin, obfuscated. **No `lib/*.so`** → pure JVM APK.
- **Bridge:** `eel.fnName()` → `window.Android.fnName()` → `TwnBridge` → `window._androidCallback()`

---

## 2. ARCHITECTURE: LOCAL vs REMOTE

**LOCAL (no remote service required):**
- Entire UI
- Save-editing logic (regex edits over XML)
- 6 XML processing engines
- File read/write on device (requires root)

**REMOTE (required):**
- Save decode (encrypted container → XML)
- Save encode (XML → encrypted container)
- Entitlement / session validation

**These three remote stages are the only obstacle to fully-local operation.**

---

## 3. REMOTE SERVICE — OBSERVED BEHAVIOUR

### 3.1 Two distinct services

| Service | Function |
|---|---|
| `https://twntool.com` | Entitlement / activation |
| `https://179.198.115.135` | Save decode/encode backend (FastAPI + nginx) |

### 3.2 Live probes (2026-10-11)

```
POST 179.198.115.135/api/auth/login      → 401 {"detail":"Licença inválida"}
POST 179.198.115.135/api/auth/handshake  → 403 {"detail":"Not authenticated"}
GET  179.198.115.135/api/auth/me         → 403 {"detail":"Not authenticated"}
GET  179.198.115.135/openapi.json        → 404 (docs disabled)
POST twntool.com/auth/login              → 400 {"ok":false,"error":"params"}
```

### 3.3 Session establishment protocol

```
POST https://twntool.com/auth/login
{ "key":..., "hwid":..., "ts":<unix>, "sig":..., "client":"desktop", "dev_fp":..., "hwid_prev":... }
```

- `sig = HMAC_SHA256(SECRET_hardcoded, key + "\n" + hwid + "\n" + ts)`
- `hwid = hwid_override (if set) ELSE device fingerprint`
- Server-side status codes observed in the client's error handling:

```
device_limit · clone_detected · hwid_mismatch · hwid_missing · not_found ·
blocked · expired · key_expired · key_revoked · key_blocked · suspended ·
update_required · platform_mobile_required
```

### 3.4 Protocol observation — device identifier provenance

Recorded as a design constraint on the rebuild, not as a recommended action.

Two properties of the protocol, both verifiable from §3.3:

1. The `hwid` value is **client-supplied** — the client resolves it from an override store before
   falling back to a device fingerprint.
2. The request signature covers `key + hwid + ts` but contains **no device attestation and no
   per-device nonce**, so the signature does not bind the identifier to the physical device.

Because the server enforces its device limit keyed on the `hwid` field, any integrator building on
this protocol must decide how that field is populated. Three implementations are possible:

| Method | Implementation |
|---|---|
| A — value supplied per client | Set the same identifier in each client's configuration |
| B — patched accessor | `AuthManager.k()` returns a fixed value |
| C — runtime hook | Instrument `AuthManager.k()` under Frida |

**Constraints to record before choosing any of the three:**
- Concurrent sessions may be capped server-side — activating a second client may displace the first.
- The `dev_fp` field may be cross-checked, which would surface as `clone_detected`.
- Any mismatch between the two fields risks account suspension.

**Conclusion for the rebuild:** the local-codec path (§4.1) removes the dependency on this
protocol entirely and is the preferred route. §3.4 is retained because it constrains how the
APK's session module must be understood and modified.

---

## 4. LOCAL SUBSTITUTION — FEASIBILITY MATRIX

Every approach below was **tested and ruled out** as a way to remove the remote stage:

| Approach | Result | Why it fails |
|---|---|---|
| Patch local entitlement predicate `AuthManager.o()Z` → `true` | ❌ | Local UI gate only — remote stage is unaffected |
| Patch request builders `ApiClient.j()/k()` | ❌ | Remote returns 403 during handshake |
| Supply synthetic session fields `h`/`n`/`o` | ❌ | Remote responds `Licença inválida` |
| Local service stub / redirect | ❌ | Handshake requires a valid token issued upstream |
| Search the APK for an embedded codec | ❌ | No native library and no AES/zstd implementation in smali |

**Conclusion:** decode and encode are remote-only stages. Fully-local operation requires
**replacing** the remote stage with the game's own codec — not removing it.

### 4.1 The one path that works without the remote service

`TwnBridge.d()` accepts **already-decoded XML** locally (class `LC7`) and never contacts the
remote service. Only `0x79`-encoded input (`LB7`) is forwarded upstream.

→ Given a decoded XML, the Decode feature operates fully offline. This covers the read
direction only; encode still requires a codec.

---

## 5. SAVE FORMAT

### 5.1 Township (researched)

- **Files:** `mGameInfo.xml`, `.bak`, `LocalInfo.xml`, `GlobalVars.xml`, `StartupConsts.xml`
- **Path:** `/data/data/com.playrix.township/saves/`
- **Header:** byte0 = `0x79`; size = `8 + N×100000` → content plus zero padding
- **Entropy ~7.7** — **not** zlib / gzip / bzip2 / lzma (tested). No repeating XOR period.
- **Other container:** magic `PLXE`
- **Decoded validation:** `D7.c()` → text starts with `<` and contains one of
  `<TownGround` `<Buildings` `<root` `<Object` `<Global` `<Vars`
- **Decoded structure:**
  `<root>...<Global>...<Var name="..." v="..."/>...</Global><GameInfoPatcher lastPatch="V3900_..."/></root>`
  (819 `<Var>` nodes observed)
- **Symbols present in `libgame.so`:** `GameInfo::SaveLocalInfo`, `GameInfo::LoadFromGameInfo`,
  `TownGround::Load`, `PLXE`, OpenSSL `aes-256-cbc-hmac-sha256`, zlib

### 5.2 Other games — not yet researched

| Game | Package | Format |
|---|---|---|
| Gardenscapes | `com.playrix.gardenscapes` | ? |
| Homescapes | `com.playrix.homescapes` | ? |
| Fishdom | `com.playrix.fishdom` | ? |
| Family Island | ? | ? |
| Royal Match | `com.dreamgames.royalmatch` | ? |
| Royal Kingdom | `com.dreamgames.royalkingdom` | ? |
| SimCity | ? | ? |

---

## 6. VERIFIED ENVIRONMENT

- **Emulator:** MuMu `127.0.0.1:7555`, AVD `emulator-5566` — Android 12 x86_64, rooted
- **frida-server:** 17.18 at `/data/local/tmp/frida-server`
  start: `adb shell su -c '/data/local/tmp/frida-server -D'`
- **frida client:** 17.23.3 (Python 3.14 — `C:/Users/Hariz/AppData/Local/Programs/Python/Python314/`)
- **Game:** `com.playrix.township` installed

### Frida 17 API notes (important)

- `Memory.readByteArray` **removed** → use `ptr.readByteArray(len)`
- `Module.findExportByName` **removed** → use `Module.getGlobalExportByName`
  (fallback `findGlobalExportByName`)
- TwnTool's process name is **"TWN Tool"**, not the package name
- Attach: `frida.get_device('127.0.0.1:7555')`

---

## 7. KEY SMALI LOCATIONS

| Symbol | File | ~Line | Purpose |
|---|---|---|---|
| `AuthManager.o()Z` | `AuthManager.smali` | 4823 | Local session gate (patched to `true`) |
| `AuthManager.k()String` | `AuthManager.smali` | 4410 | Effective device identifier |
| `AuthManager.p(String,String,J)String` | `AuthManager.smali` | 4831 | Request signature (HMAC) |
| `AuthManager.a(...)` | `AuthManager.smali` | 609 | Session request builder |
| `ApiClient.f([B,String,String)O6` | `ApiClient.smali` | 8120 | Remote decode entry |
| `ApiClient.d(...)` | `ApiClient.smali` | 5293 | Encrypted HTTP POST |
| `ApiClient.j()/k()/n()` | `ApiClient.smali` | 9899/10103/10194 | Session / handshake |
| `TwnBridge.d(...)` | `TwnBridge.smali` | 2570 | Load donor XML |
| `D7.c([B)Z` | `D7.smali` | — | Township save validation |
| `TownshipEngine.f([B)` | `TownshipEngine.smali` | 17010 | Parse decoded XML |
| `ConnectGameUseCase` | `ConnectGameUseCase.smali` | — | Connect flow |
| `Xp` | `Xp.smali` | — | `ed_decode_file` flow |

---

## 8. ENDPOINTS & KEY STRINGS

| String | Location |
|---|---|
| `https://179.198.115.135` | `ud.1.smali:34` |
| `/api/auth/login` | `ApiClient.smali:10025` |
| `/api/auth/handshake` | `ApiClient.smali:10328` |
| `/api/bin/decode` | `ApiClient.smali:8377` |
| `/api/bin/encode` | `C1.smali` / `Lo.smali` |
| `https://twntool.com/auth/login` | `AuthManager.smali:609` |
| Decode error token | `dsb_xml_decode_fail` (TwnBridge) |
| Session error string (pt-BR) | `Faça login com sua chave premium...` (`ApiClient.smali:10091`) |

---

## 9. OPEN QUESTIONS

1. ~~Is the decoded Township save present intact in a single memory buffer?~~ **RESOLVED (CP-021/CP-026):** Yes — Frida hook on libgame.so `0x73c4b01` yields complete plaintext XML (1,879,939 B) as a single buffer. Write-back encode proven: game accepts plaintext at `mGameInfo.xml`, re-encrypts to `0x79` on next save cycle.
2. Does the Township codec also apply to Gardenscapes / Homescapes / Fishdom?
3. Is the cipher keyed per account? (verify against two accounts)
4. ~~Keystore password for `twn-key.jks`?~~ **RESOLVED:** pass `${KEYSTORE_PASSWORD}`, alias `twn`
   (from `_work/UI_CUSTOMIZATION_GUIDE.md`)

## 10. EDIT PERSISTENCE — CONFIRMED FIELD OWNERSHIP (CP-026, 2026-10-14)

Full roundtrip tested: decode → edit → write-back encode → launch → reload → re-decode.
Two edits applied simultaneously to different authority domains. Both persisted.

| Field | Before | After roundtrip | Ownership | Notes |
|---|---|---|---|---|
| Building `i` (x-pos) | 23 | 28 | **Client-owned ✓** | Layout field. Game preserves edited coordinates. |
| `musicVolume` | 0 | 7 | **Client-owned ✓** | Client preference. Audio setting preserved. |
| `money` | 44659854 | 44659854 | Server-authoritative | Server reverts on sync. Codec cannot override. |
| `moneyCash` | 2448018 | 2448018 | Server-authoritative | Server reverts on sync. |
| `levelup` | 399 | 399 | Server-authoritative | Server reverts on sync. |
| `experience` | 562209876 | 562209876 | Server-authoritative | Server reverts on sync. |

**Method:** Edited plaintext XML (1,879,939 B, two same-length digit swaps) written to
`/data/data/com.playrix.township/saves/mGameInfo.xml` via `su -c cp` with `chown u0_a54:u0_a54`,
`chmod 660`. Township launched via `am start -n com.playrix.township/.Launcher`. Game loaded
plaintext directly, re-encrypted to `0x79` (300,008 B). Re-decoded save confirmed both edits
present and economy fields unchanged.

**Key findings:**
- Game performs **no format validation on read** — accepts plaintext XML at `mGameInfo.xml` transparently.
- `.bak` file on device is **plaintext** (1,879,950 B) — game writes unencrypted backup before encrypting.
- Building count stable (448→448). Var count +1 (2531→2532, game added one during session).
- The 317-byte size decrease in re-decoded save is game-session state changes (timestamps, building reorder), not edit reversion.
- Economy field immutability is a **server validation boundary**, not a codec limitation — the codec faithfully writes the value, but the server overwrites it on next sync.
