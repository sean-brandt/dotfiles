#!/usr/bin/env zsh
# -*- mode: sh; sh-indentation: 4; indent-tabs-mode: nil; sh-basic-offset: 4; -*-

if command -v fasd >/dev/null 2>&1; then
    echo > /dev/null
else
    HOMEBREW_NO_AUTO_UPDATE=1 brew install fasd
fi

if [ ! -d ~/.zinit/bin  ] ; then
    mkdir ~/.zinit
    git clone https://github.com/zdharma/zinit.git ~/.zinit/bin
fi
