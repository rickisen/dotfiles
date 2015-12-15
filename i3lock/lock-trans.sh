#!/bin/bash
scrot /tmp/screenshot.png
convert /tmp/screenshot.png -blur 0x5 -level 0%,100%,0.7 /tmp/screenshotblur.png
composite -gravity Center ~/Sync/dotfiles/i3lock/lock8.png /tmp/screenshotblur.png /tmp/screenshotcompblur.png
i3lock -i /tmp/screenshotcompblur.png

