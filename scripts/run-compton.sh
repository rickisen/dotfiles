#!/bin/bash
echo "$HOST"
if [[ "$( hostname )" == "laptop" ]]; then
  compton --config ~/Programming/mine/dotfiles/home/compton.conf --vsync --backend glx
else
  compton --config ~/programming/mine/dotfiles/home/compton.conf
fi
