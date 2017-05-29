#!/bin/bash
rm /tmp/screenshot.png
rm /tmp/screenshotblur.png
import -window root -resize 10% /tmp/screenshot.png
convert /tmp/screenshot.png -gamma 0.9 -blur 0x2 -scale 1000% /tmp/screenshotblur.png
