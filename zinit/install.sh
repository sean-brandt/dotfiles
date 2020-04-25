#!/usr/bin/env zsh

if command -v fasd >/dev/null 2>&1; then
    echo > /dev/null
else
    HOMEBREW_NO_AUTO_UPDATE=1 brew install fasd
fi

exec sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"
