#!/bin/bash
# Restart HRZTools on the emulator and re-forward the WebView DevTools socket.
D="${ADB_DEV:-$(adb devices | awk 'NR>1 && $2=="device"{print $1; exit}')}"
adb -s "$D" shell am force-stop com.twntool.android
adb -s "$D" shell am start -n com.twntool.android/.MainActivity >/dev/null
for i in $(seq 1 30); do
  S=$(adb -s "$D" shell cat /proc/net/unix | grep -o "webview_devtools_remote_[0-9]*" | head -1)
  [ -n "$S" ] && break
  sleep 1
done
adb -s "$D" forward --remove tcp:9333 2>/dev/null
adb -s "$D" forward tcp:9333 localabstract:$S >/dev/null
sleep 3
echo "forwarded $S"
