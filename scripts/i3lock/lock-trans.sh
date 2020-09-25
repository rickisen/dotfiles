#!/bin/bash
# scrot /tmp/screenshot.png
# convert /tmp/screenshot.png -blur 0x7 -level 0%,100%,0.7 /tmp/screenshotblur.png
# convert /tmp/screenshot.png -blur 0x7 /tmp/screenshotblur.png
# composite -gravity Center ~/Sync/dotfiles/i3lock/lock8.png /tmp/screenshotblur.png /tmp/screenshotcompblur.png
# i3lock -i /tmp/screenshotcompblur.png

# rm /tmp/screenshot.png
# rm /tmp/screenshotblur.png
# import -window root -resize 10% /tmp/screenshot.png
# convert /tmp/screenshot.png -gamma 0.9 -blur 0x2 -scale 1000% /tmp/screenshotblur.png
# i3lock --image=/tmp/screenshotblur.png
i3lock -c 222222
