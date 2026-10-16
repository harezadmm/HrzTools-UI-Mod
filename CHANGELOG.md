# Changelog

## Regatta v23 — x86_64 verified artifact

### Changed
- Publishes `build/HrzTools_Regatta-v23-x86_64.apk` with the bounded Regatta parser path.
- Parser avoids materializing the full 37k-task payload and returns an 8-task result.

### Verified
- APK install and app launch completed on Android x86_64 emulator.
- Evidence log records `result_ok=true` and `result_meta={tarefas=8}`.
- Package: `com.hrztool.android`.
- SHA-256: `454e0bbdd894e38c6388617fe34a5404d32f655675bc8de16d57a361a0018679`.
- ABI: x86_64 only; ARM64 physical-device support is not claimed for this artifact.


## v16.1.0 — Android 64-bit dual-ABI release

### Changed
- Publishes latest v16 UI and local codec payload with both `arm64-v8a` and `x86_64` native libraries.
- Targets physical ARM64 Android devices and x86_64 emulators. It does not claim support for 32-bit-only devices.

### Verified
- APK signature verified with APK Signature Scheme v2 and v3.
- Package: `com.hrztool.android`, version code `24`, version name `1.75`.
- x86_64 install smoke test completed on MuMu emulator.
- SHA-256: `87c39ef3a279437c8dd909f80a2f676022c28bc24655a38a3fb6836e074d5c07`.


## [UI Overhaul] — 2026-07-10

### Changed — TOOLS feature-button grid (`ToolsScreenKt`)
- Card fixed height `108dp → 94dp` (tighter, less wasted space).
- Card corner radius `12dp → 16dp` (softer, more modern).
- Grid inter-row vertical spacing `8dp → 10dp` (more breathing room).
- Reordered all 15 game tools into functional groups (Economy → Unlock → Account → Utility)
  by remapping the `aput-object` array indices; HRZ special tools (Global Search, Favorite Tools,
  Quick Presets, Edit History) kept at the end.

### Verified
- Rebuilt with apktool, signed with uber-apk-signer, installed on Android emulator.
- Full TOOLS grid (19 cards) renders in the new order with no crash/regression.

### Notes
- STATS tab left unchanged (already consistent; avoided regressing a tested screen).
- UNLOCKS tab untouched (content gated behind a decoded save; not testable in this pass).
