#!/bin/bash
# Build + sign + install the APK with the reference skin.
#   ./build.sh            build, sign, install (adb install -r keeps app data)
#   ./build.sh noinstall  build and sign only
set -e
: "${KEYSTORE_PASSWORD:?Set KEYSTORE_PASSWORD in the local build environment}"
: "${KEYSTORE_ALIAS:=twn}"
cd "$(dirname "$0")/.."            # REBUILD/
OUT=build/hrztools-refskin
python3 ui-skin/inject.py
node.exe tools/ui_bundle.mjs encrypt decomp/assets/index_decrypted.html decomp/assets/index.bin
node.exe tools/ui_bundle.mjs verify  decomp/assets/index_decrypted.html decomp/assets/index.bin
java.exe -Xmx3g -jar tools/apktool.jar b decomp -o "$OUT-unsigned.apk"
rm -rf build/refskin-signed
java.exe -jar tools/uber-apk-signer.jar -a "$OUT-unsigned.apk" -o build/refskin-signed \
     --ks tools/twn-key.jks --ksAlias "$KEYSTORE_ALIAS" --ksPass "$KEYSTORE_PASSWORD" --ksKeyPass "$KEYSTORE_PASSWORD" >/dev/null
SIGNED=$(ls build/refskin-signed/*.apk | head -1)
cp "$SIGNED" "$OUT-signed.apk"
echo "signed: $OUT-signed.apk ($(stat -c %s "$OUT-signed.apk") bytes)"
if [ "$1" != "noinstall" ]; then
  D="${ADB_DEV:-$(adb devices | awk 'NR>1 && $2=="device"{print $1; exit}')}"
  adb -s "$D" install -r "$OUT-signed.apk"
fi
