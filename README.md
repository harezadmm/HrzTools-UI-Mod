# HrzTools — UI Overhaul + Local Township Codec

APK modifikasi HrzTools untuk Android dengan UI TOOLS yang dirapikan dan pipeline Township yang berjalan lokal di APK. Build terbaru yang dipublikasikan adalah **v15 ARM64**, sudah aligned, signed, dan diuji pada emulator Android.

> Repo ini hanya memuat source perubahan/integrasi yang dibuat untuk project, dokumentasi, dan artefak APK release. Decompile penuh aplikasi pihak ketiga, engine game, APK split besar, keystore, serta credential tidak dipublikasikan.

## Release terbaru

- **Version:** `v15.0.0`
- **APK:** [`build/HrzTools_UI-Overhaul.apk`](build/HrzTools_UI-Overhaul.apk)
- **Release page:** [GitHub Releases](../../releases/latest)
- **SHA-256:** `6fbef237907e4e6ea440a8330d461dfaabc86a4ba33526681d2c531394b67dcd`
- **Ukuran:** 69,036,875 bytes
- **ABI:** ARM64 (`arm64-v8a`)

## Perubahan v15

### Local Township codec

- Decode dan encode save Township dipindahkan ke runtime lokal.
- Root reader memakai `/proc/1/root` agar namespace shell yang dijalankan dari aplikasi dapat membaca save game yang benar.
- Integrasi bridge, `LocalCodec`, dan native hook ARM64 dibundel ke APK.
- Jalur save yang digunakan: `/data/data/com.playrix.township/saves/mGameInfo.xml`.

### UI TOOLS

- Kartu fitur dibuat lebih ringkas: tinggi `94dp`, radius `16dp`, dan jarak grid `10dp`.
- Tombol dikelompokkan berdasarkan fungsi: ekonomi, unlock, akun, dan utilitas.
- Layout tetap menggunakan patch Smali pada `ToolsScreenKt`.

## Source code terkait APK terbaru

Folder [`source/`](source/) berisi source perubahan yang diperlukan untuk memahami dan mengulang integrasi v15:

| Folder | Isi |
|---|---|
| [`source/decomp-patches/`](source/decomp-patches/) | File Smali/resource yang berubah dari decompile dasar v15 |
| [`source/native/`](source/native/) | Native hook C, `LocalCodec.java`, Smali codec, dan launcher script |
| [`source/ui-skin/`](source/ui-skin/) | CSS/JS/inject/build script untuk UI skin |
| [`source/tools/`](source/tools/) | Helper codec dan pipeline yang dipakai selama rebuild |
| [`patches/`](patches/) | Patch UI TOOLS |
| [`source/docs/`](source/docs/) | Rencana rebuild, findings, dan catatan teknis |

`source/MODIFIED_FILES.txt` adalah daftar file yang dipublikasikan dalam bundle source ini.

## Build overview

Build v15 membutuhkan toolchain Android lokal yang tidak disimpan di repository:

1. Siapkan decompile dasar APK pada folder kerja lokal.
2. Terapkan file di `source/decomp-patches/` ke path decompile yang sesuai.
3. Build native `source/native/twnhook.c` dan `source/native/twninject.c` untuk `arm64-v8a`.
4. Compile/inject `LocalCodec` dan resource UI.
5. Build dengan apktool.
6. Zipalign dan sign memakai keystore milik operator secara lokal.
7. Install ke device/emulator ARM64.

Contoh perintah umum:

```bash
java -jar apktool.jar b decompile-dir -o build/hrztools-v15-unsigned.apk
java -jar uber-apk-signer.jar -a build/hrztools-v15-unsigned.apk
adb install -r build/hrztools-v15-aligned-signed.apk
```

Keystore, password signing, APK input asli, game engine `libgame.so`, dan binary toolchain harus disediakan di lingkungan build lokal; semuanya sengaja tidak di-commit.

## Verifikasi v15

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
