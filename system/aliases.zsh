#!/bin/sh
if [ -n "$(command -v exa)" ]; then
    alias ls='exa -F --group-directories-first'
    alias l='exa -lbF --group-directories-first'
    alias ll='exa -lbGF --git --group-directories-first'
	alias llm='exa -lbGd --git --sort=modified'                            # long list, modified date sort
	alias la='exa -lbhHigUmuSa --time-style=long-iso --git --color-scale'  # all list
    alias lg='exa -TF'
	alias lx='exa -lbhHigUmuSa@ --time-style=long-iso --git --color-scale' # all + extended list
	alias lS='exa -1'                                                              # one column, just names
	alias lt='exa --tree --level=2'                                         # tree

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
