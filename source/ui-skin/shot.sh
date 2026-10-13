#!/bin/bash
# Screenshot the WebView and build a side-by-side with a reference image.
# Usage: ./shot.sh <out-name> "<reference file name prefix, e.g. A2>" [offsetY]
SP="/c/Users/Hariz/AppData/Local/Temp/claude/D--Downloads-Sorted-Codex-Folders-APK-TOWNSHIp/f29021c2-77ee-4135-b655-59d52c0a3de0/scratchpad"
REFDIR="D:/Downloads_Sorted_Codex/Folders/APK/TOWNSHIp/UI REFRENSI KUMAU"
name="$1"; pre="$2"; off="${3:-20}"
timeout 25 node "$SP/cdp.mjs" shot "$SP/$name.png" >/dev/null || { echo "shot failed"; exit 1; }
ref=$(ls "$REFDIR" | grep "^$pre " | head -1)
powershell -NoProfile -File "$SP/cmp.ps1" -ref "$REFDIR/$ref" -cur "$SP/$name.png" -out "$SP/cmp_$name.png" -curOffsetY "$off"
echo "$SP/cmp_$name.png"
