#!/bin/bash

if [[ $( ! pgrep neomutt ) ]]; then
	tmux new-session -s mu -n neomutt -d neomutt &
fi

tmux attach -t mu

