#!/bin/bash
cd ~/Pictures/wallpaper
ls |sort -R |tail -1 |while read file; do
    feh --bg-fill $file
done
