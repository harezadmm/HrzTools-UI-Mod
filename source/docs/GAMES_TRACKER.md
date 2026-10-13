# GAMES TRACKER — Rebuild Full-Local

> Update status per game di sini. Format: `[ ]` belum · `[~]` sedang · `[x]` selesai · `[!]` gagal/blocked

## Ringkasan

| # | Game | Package | Engine | Decode | Encode | Integrasi | Status |
|---|---|---|---|---|---|---|---|
| 1 | Township | `com.playrix.township` | `TownshipEngine` | `[~]` | `[ ]` | `[ ]` | 🔶 template, 70% |
| 2 | Gardenscapes | `com.playrix.gardenscapes` | `PxEngine` | `[ ]` | `[ ]` | `[ ]` | ⬜ |
| 3 | Homescapes | `com.playrix.homescapes` | `PxEngine` | `[ ]` | `[ ]` | `[ ]` | ⬜ |
| 4 | Fishdom | `com.playrix.fishdom` | `FishdomEngine` | `[ ]` | `[ ]` | `[ ]` | ⬜ |
| 5 | Family Island | `com.melsoft.familyisland` (?) | `FamilyIslandEngine` | `[ ]` | `[ ]` | `[ ]` | ⬜ |
| 6 | Royal Match | `com.dreamgames.royalmatch` | `RoyalEngine` | `[ ]` | `[ ]` | `[ ]` | ⬜ |
| 7 | Royal Kingdom | `com.dreamgames.royalkingdom` | `RoyalEngine` | `[ ]` | `[ ]` | `[ ]` | ⬜ |
| 8 | SimCity | `com.ea.game.simcity` (?) | `SimCityEngine` | `[ ]` | `[ ]` | `[ ]` | ⬜ |

---

## Detail per Game

### 1. Township `com.playrix.township`
- **Save path:** `/data/data/com.playrix.township/saves/mGameInfo.xml` (+ `.bak`, `LocalInfo.xml`, `GlobalVars.xml`, `StartupConsts.xml`)
- **Format:** byte0=`0x79`, ukuran `8 + N×100000`; container lain = `PLXE`
- **Decoded structure:** `<root>...<Global>...<Var name=.../>...</Global><GameInfoPatcher lastPatch="..."/></root>`
- **Validasi:** `D7.c()` → `<TownGround|<Buildings|<root|<Object|<Global|<Vars`
- **Decode:** `[~]` — fragment dari memori OK (819 `<Var>`); perlu rekonstruksi utuh
- **Encode:** `[ ]`
- **Engine file:** `com/twntool/township/TownshipEngine.smali`
- **Catatan:** sample save 90 file di `D:/Downloads_Sorted_Codex/Folders/XML DATA/`; `libgame.so` di `/tmp/tw/lib/x86_64/`

### 2. Gardenscapes `com.playrix.gardenscapes`
- **Save path:** ?
- **Format:** ? (kemungkinan sama dengan Township — sesama Playrix)
- **Decode/Encode/Integrasi:** `[ ]` / `[ ]` / `[ ]`
- **Catatan:** engine = `PxEngine` (shared dgn Homescapes)

### 3. Homescapes `com.playrix.homescapes`
- **Format:** ? (kemungkinan sama dgn Gardenscapes)
- **Status:** `[ ]`

### 4. Fishdom `com.playrix.fishdom`
- **Format:** ?
- **Engine:** `FishdomEngine.smali`
- **Status:** `[ ]`

### 5. Family Island
- **Package:** ?
- **Engine:** `FamilyIslandEngine.smali`
- **Status:** `[ ]`

### 6. Royal Match `com.dreamgames.royalmatch`
- **Engine:** `RoyalEngine.smali`
- **Status:** `[ ]`

### 7. Royal Kingdom `com.dreamgames.royalkingdom`
- **Engine:** `RoyalEngine.smali`
- **Status:** `[ ]`

### 8. SimCity
- **Engine:** `SimCityEngine.smali`
- **Status:** `[ ]`

---

## Catatan Prioritas

1. **Township** — template, kerjakan tuntas.
2. **Gardenscapes/Homescapes/Fishdom** — sesama Playrix, kemungkinan codec sama → termudah setelah Township.
3. **Royal Match/Kingdom** — Dream Games (developer beda).
4. **Family Island** — Melsoft.
5. **SimCity** — EA.
