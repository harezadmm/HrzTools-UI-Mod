#!/bin/bash
# Dev loop: inject the current skin into the running WebView on MuMu.
# Usage: ./live.sh            (css + js)
#        ./live.sh css        (css only)
cd "$(dirname "$0")"
SP="/c/Users/Hariz/AppData/Local/Temp/claude/D--Downloads-Sorted-Codex-Folders-APK-TOWNSHIp/f29021c2-77ee-4135-b655-59d52c0a3de0/scratchpad"
cat css/*.css > "$SP/_skin.css"
timeout 20 node "$SP/cdp.mjs" eval "(function(){var s=document.getElementById('hrztools-ui-system'); if(s) s.disabled=true; return 1})()" >/dev/null
timeout 20 node "$SP/cdp.mjs" css "$SP/_skin.css" hrz-ref-skin-css
if [ "$1" != "css" ]; then
  cat js/*.js > "$SP/_skin_bundle.js"
  timeout 20 node "$SP/cdp.mjs" evalfile "$SP/_skin_bundle.js" >/dev/null
fi
