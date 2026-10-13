#!/system/bin/sh
set -u
PKG=com.playrix.township
SO=/data/local/tmp/libtwnhook.so
INJECTOR=/data/local/tmp/twninject
rm -f /data/data/$PKG/files/twn_decoded.bin /data/local/tmp/twn_decoded.bin
am force-stop "$PKG"
am start -n "$PKG/.Launcher" >/dev/null 2>&1 &
pid=""
i=0
while [ -z "$pid" ] && [ "$i" -lt 400 ]; do
  pid="$(toybox pidof "$PKG" 2>/dev/null || true)"
  i=$((i + 1))
done
if [ -z "$pid" ]; then
  echo "inject_launch: process did not start" >&2
  exit 1
fi
echo "inject_launch: pid=$pid polls=$i" >&2
exec "$INJECTOR" "$pid" "$SO"
