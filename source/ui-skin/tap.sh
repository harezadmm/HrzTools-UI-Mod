#!/bin/bash
# Tap the centre of the first element matching a CSS selector (real touch via adb).
# Usage: ./tap.sh "<css selector>"
SP="/c/Users/Hariz/AppData/Local/Temp/claude/D--Downloads-Sorted-Codex-Folders-APK-TOWNSHIp/f29021c2-77ee-4135-b655-59d52c0a3de0/scratchpad"
D="${ADB_DEV:-$(adb devices | awk 'NR>1 && $2=="device"{print $1; exit}')}"
SEL="$1"
XY=$(timeout 20 node "$SP/cdp.mjs" eval "(()=>{const e=document.querySelector($(printf '%s' "$SEL" | node -e 'process.stdout.write(JSON.stringify(require("fs").readFileSync(0,"utf8")))'));if(!e)return 'none';e.scrollIntoView({block:'center'});const r=e.getBoundingClientRect();return Math.round((r.x+r.width/2)*devicePixelRatio)+' '+Math.round((r.y+r.height/2)*devicePixelRatio)})()")
if [ "$XY" = "none" ]; then echo "not found: $SEL"; exit 1; fi
sleep 0.3
XY=$(timeout 20 node "$SP/cdp.mjs" eval "(()=>{const e=document.querySelector($(printf '%s' "$SEL" | node -e 'process.stdout.write(JSON.stringify(require("fs").readFileSync(0,"utf8")))'));const r=e.getBoundingClientRect();return Math.round((r.x+r.width/2)*devicePixelRatio)+' '+Math.round((r.y+r.height/2)*devicePixelRatio)})()")
adb -s "$D" shell input tap $XY
echo "tapped $SEL @ $XY"
