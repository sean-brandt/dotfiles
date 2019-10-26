#!/bin/sh
if [ -n "$(command -v exa)" ]; then
    alias ls='exa -F --group-directories-first'
    alias l='exa -F --group-directories-first'
    alias ll='exa -lF --git --group-directories-first'
    alias la='exa -alrF --git --group-directories-first'
    alias lg='exa -TF'
elif [ "$(uname -s)" = "Darwin" ]; then
	alias ls="ls -FG"
    alias l="ls -lAh"
    alias la="ls -A"
    alias ll="ls -l"
else
	alias ls="ls -F --color"
    alias l="ls -lAh"
    alias la="ls -A"
    alias ll="ls -l"
fi

alias grep="grep --color=auto"
alias duf="du -sh * | sort -hr"
alias less="less -RFX"

alias croot='cd "$(git rev-parse --show-toplevel)"'

# quick hack to make watch work with aliases
alias watch='watch '

# open, pbcopy and pbpaste on linux
if [ "$(uname -s)" != "Darwin" ]; then
	if [ -z "$(command -v pbcopy)" ]; then
		if [ -n "$(command -v xclip)" ]; then
			alias pbcopy="xclip -selection clipboard"
			alias pbpaste="xclip -selection clipboard -o"
		elif [ -n "$(command -v xsel)" ]; then
			alias pbcopy="xsel --clipboard --input"
			alias pbpaste="xsel --clipboard --output"
		fi
	fi
	if [ -e /usr/bin/xdg-open ]; then
		alias open="xdg-open"
	fi
fi
