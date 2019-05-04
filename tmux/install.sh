#!/bin/sh

if [[ "$(uname -s)" = "Darwin" ]]; then
	brew install tmux
else
	sudo apt install tmux
fi
