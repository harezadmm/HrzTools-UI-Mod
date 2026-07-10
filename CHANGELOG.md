# Changelog

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
