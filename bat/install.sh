#!/usr/bin/env zsh
# -*- mode: sh; sh-indentation: 4; indent-tabs-mode: nil; sh-basic-offset: 4; -*-

if command -v bat >/dev/null 2>&1; then
    echo > /dev/null
else
    HOMEBREW_NO_AUTO_UPDATE=1 brew install bat
fi

alias cat=bat
alias more=bat
alias less=bat

