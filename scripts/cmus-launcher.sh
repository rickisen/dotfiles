#!/bin/bash
# Simple script for launching cmus music player in a singletonesque way, 
# so that it only starts running once, and connects to a tmux session

if [[ $( ! pgrep cmus ) ]]; then
	tmux new-session -s cm -n cmus -d cmus &
fi

tmux attach -t cm

