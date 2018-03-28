#!/bin/sh
xrandr --output DVI-D-0 --mode 1920x1080 --pos 0x0 --rotate left --output HDMI-0 --mode 1920x1080 --pos 3000x0 --rotate normal --output DVI-I-1 --mode 1920x1080 --rate 144 --pos 1080x0 --rotate normal --output DVI-I-0 --off --output DP-1 --off --output DP-0 --mode 1920x1080 --pos 3000x0 --rotate normal
sleep 2
xcalib -c -s 1
sleep 1
xcalib -gc 0.8 -a -s 1
~/.fehbg
