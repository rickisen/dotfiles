#!/bin/bash
active="$(xprop -root _NET_ACTIVE_WINDOW | grep -oE '[^ ]+$')"

if [[ "$(xprop -id "$active" INVERT_COLOR)" != 'INVERT_COLOR(STRING) = "True"' ]]; then
  xprop -id "$active" -f INVERT_COLOR 8s -set INVERT_COLOR True
else
  xprop -id "$active" -f INVERT_COLOR 8s -set INVERT_COLOR False
fi
