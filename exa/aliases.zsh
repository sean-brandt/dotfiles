#!/bin/sh

if command -v exa >/dev/null 2>&2; then
	alias ls='exa -F --group-directories-first'
    alias ll='exa -lF --group-directories-first --git'
    alias la='exa -lFa --group-directories-first --git'
fi
