# HRZTools Project Context

## Workspace

- Repo: `D:\Downloads_Sorted_Codex\Folders\APK\TOWNSHIp\_publish_hrztools`
- Private rebuild/decompile workspace: `D:\Downloads_Sorted_Codex\Folders\APK\TOWNSHIp\REBUILD`
- Android package: `com.hrztool.android`
- Test emulator: `emulator-5566`

## Current State

The local XML apply-edit flow is fixed. The old `do_apply` path incorrectly reached a premium authentication gate and returned a login error. The route now uses the local `township.save_memory` path.

Main native fix:

- `source/decomp-patches/smali/wo.1.smali`

Frontend source:

- `source/decomp-patches/assets/index.html`

## Verified Result

- Save loaded successfully in emulator.
- `Wins 1st Try` changed from `6466` to `6467`.
- UI displayed `now 6467`.
- Console displayed: `Local XML edit applied and read-back verified: Wins 1st Try = 6467.`
- UI displayed `Errors · 0` and `Apply · 1`.
- Premium/login error did not appear.

Latest APK:

- `build/HrzTools_UI-Overhaul.apk`
- SHA256: `8a17d3dd7eab1bff2791c10a54d510c4bac9cc22c09342bb7788619f5c169800`

## Continuation Rules

1. Read `git status` and `git diff` before editing.
2. Preserve existing modifications.
3. Use `REBUILD` for decompile/build work.
4. Rebuild, sign, install, and run the APK after behavior changes.
5. Verify through `adb`, UI state, logcat, and output save/XML state.
6. Next focus: test `Send to Game`, persist XML, then validate after app restart.
7. Report observed evidence, not assumptions.
