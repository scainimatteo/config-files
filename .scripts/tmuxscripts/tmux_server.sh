#!/bin/bash

name="ide";

if [ -z "$1" ]; then
	echo "ao"
else
	if [ ! -d "$1" ]; then
		mkdir "$1";
	fi
	cd "$1" || exit
	name="$(basename "$1")";
fi

sudo useradd -M -N -G guests guest
if [ $? -eq "0" ]; then
	sudo passwd guest
	sudo usermod -a -G guests "$(whoami)"
fi


tmux -S /tmp/socket new -s "$name" -d
sudo chown "$(whoami)":guests /tmp/socket

tmux -S /tmp/socket rename-window 'code'
tmux -S /tmp/socket send-keys 'nvim .' C-m
tmux -S /tmp/socket new-window
tmux -S /tmp/socket rename-window -t 1 'terminal'
tmux -S /tmp/socket select-window -t 0
tmux -S /tmp/socket attach-session
