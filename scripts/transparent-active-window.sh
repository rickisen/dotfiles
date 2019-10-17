#!/bin/bash
active="$(xprop -root _NET_ACTIVE_WINDOW | grep -oE '[^ ]+$')"

if [[ "$(xprop -id "$active" TRANSPARENT)" != 'TRANSPARENT(STRING) = "True"' ]]; then
  xprop -id "$active" -f TRANSPARENT 8s -set TRANSPARENT True
else
  xprop -id "$active" -f TRANSPARENT 8s -set TRANSPARENT False
fi
