#!/usr/bin/env zsh

if command -v fasd >/dev/null 2>&1; then
    echo > /dev/null
else
    HOMEBREW_NO_AUTO_UPDATE=1 brew install fasd
fi

if [ ! -d ~/.zinit/bin  ] ; then
    mkdir ~/.zinit
    git clone https://github.com/zdharma/zinit.git ~/.zinit/bin
fi
