# HrzTools — UI Overhaul + Local Township Codec

APK modifikasi HrzTools untuk Android dengan UI TOOLS yang dirapikan dan pipeline Township lokal. Artifact terbaru adalah **Regatta v23 x86_64**; release dual-ABI v16.1.0 tetap disimpan sebagai artifact historis.

> Repo ini hanya memuat source perubahan/integrasi yang dibuat untuk project, dokumentasi, dan artefak APK release. Decompile penuh aplikasi pihak ketiga, engine game, APK split besar, keystore, serta credential tidak dipublikasikan.

# Regatta v23 artifact

- **Version:** `Regatta v23`
- **APK:** [`build/HrzTools_Regatta-v23-x86_64.apk`](build/HrzTools_Regatta-v23-x86_64.apk)
- **SHA-256:** `454e0bbdd894e38c6388617fe34a5404d32f655675bc8de16d57a361a0018679`
- **Ukuran:** 69,106,511 bytes
- **Package:** `com.hrztool.android`
- **ABI:** x86_64 only
- **Verified:** installed and launched on Android x86_64 emulator; Regatta parser returned `result_ok=true` and `tarefas=8`
- **Evidence:** [`evidence/v23-regatta-final.log`](evidence/v23-regatta-final.log)

> Batasan penting: artifact ini membawa native helper x86_64. Verifikasi instalasi berlaku untuk emulator Android x86_64, bukan perangkat fisik ARM64. Build ARM64 memerlukan native helper ARM64 terpisah.

## Release v16.1.0 (historical dual-ABI artifact)

- **Version:** `v16.1.0`
- **APK:** [`build/HrzTools_UI-Overhaul.apk`](build/HrzTools_UI-Overhaul.apk)
- **Release page:** [GitHub Releases](../../releases/latest)
- **SHA-256:** `87c39ef3a279437c8dd909f80a2f676022c28bc24655a38a3fb6836e074d5c07`
- **Ukuran:** 69,118,937 bytes
- **ABI:** ARM64 (`arm64-v8a`) + emulator x86_64 (`x86_64`)

## Perubahan v16.1.0

Payload terbaru mempertahankan integrasi local codec dan UI TOOLS v16, lalu menambahkan native library ARM64 serta x86_64.

### Local Township codec

- Decode dan encode save Township dipindahkan ke runtime lokal.
- Root reader memakai `/proc/1/root` agar namespace shell yang dijalankan dari aplikasi dapat membaca save game yang benar.
- Integrasi bridge, `LocalCodec`, dan native hook ARM64 + x86_64 dibundel ke APK.
- Jalur save yang digunakan: `/data/data/com.playrix.township/saves/mGameInfo.xml`.

### UI TOOLS

- Kartu fitur dibuat lebih ringkas: tinggi `94dp`, radius `16dp`, dan jarak grid `10dp`.
- Tombol dikelompokkan berdasarkan fungsi: ekonomi, unlock, akun, dan utilitas.
- Layout tetap menggunakan patch Smali pada `ToolsScreenKt`.

## Source code terkait APK terbaru

Folder [`source/`](source/) berisi source perubahan yang diperlukan untuk memahami dan mengulang integrasi v16.1.0:

| Folder | Isi |
|---|---|
| [`source/decomp-patches/`](source/decomp-patches/) | File Smali/resource yang berubah dari decompile dasar v16 |
| [`source/native/`](source/native/) | Native hook C, `LocalCodec.java`, Smali codec, dan launcher script |
| [`source/ui-skin/`](source/ui-skin/) | CSS/JS/inject/build script untuk UI skin |
| [`source/tools/`](source/tools/) | Helper codec dan pipeline yang dipakai selama rebuild |
| [`patches/`](patches/) | Patch UI TOOLS |
| [`source/docs/`](source/docs/) | Rencana rebuild, findings, dan catatan teknis |

`source/MODIFIED_FILES.txt` adalah daftar file yang dipublikasikan dalam bundle source ini.

## Build overview

Build v16.1.0 membutuhkan toolchain Android lokal yang tidak disimpan di repository:

1. Siapkan decompile dasar APK pada folder kerja lokal.
2. Terapkan file di `source/decomp-patches/` ke path decompile yang sesuai.
3. Build native `source/native/twnhook.c` dan `source/native/twninject.c` untuk `arm64-v8a` dan `x86_64`.
4. Compile/inject `LocalCodec` dan resource UI.
5. Build dengan apktool.
6. Zipalign dan sign memakai keystore milik operator secara lokal.
7. Install dan smoke-test pada emulator x86_64 serta perangkat fisik ARM64 bila tersedia.

Contoh perintah umum:

```bash
java -jar apktool.jar b decompile-dir -o build/hrztools-v16.1.0-unsigned.apk
java -jar uber-apk-signer.jar -a build/hrztools-v16.1.0-unsigned.apk
adb install -r build/hrztools-v16.1.0-aligned-signed.apk
```

Keystore, password signing, APK input asli, game engine `libgame.so`, dan binary toolchain harus disediakan di lingkungan build lokal; semuanya sengaja tidak di-commit.

## Verifikasi v16.1.0

Smoke test yang berhasil:

```text
Checking root and reading the save...
Connected! Save downloaded and decoded.
```

Artefak hasil:

```text
/data/data/com.hrztool.android/files/twn_codec_input.bin   300008 bytes
/data/data/com.hrztool.android/files/twn_codec_output.xml  769617 bytes
```

Output XML diawali dengan:

```xml
<root><Zoo><TownGround ver="2">
```

## Riwayat UI sebelumnya

Perubahan UI TOOLS terdahulu tetap terdokumentasi pada [`patches/ToolsScreen_ui_overhaul.diff`](patches/ToolsScreen_ui_overhaul.diff) dan screenshot pada [`screenshots/`](screenshots/).
