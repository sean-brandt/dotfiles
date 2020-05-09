#!/usr/bin/env zsh
# -*- mode: sh; sh-indentation: 4; indent-tabs-mode: nil; sh-basic-offset: 4; -*-
[ "$(uname -s)" = "Darwin" ] && exit 0
test -z "$KEEP_TERMINATOR" || exit 0
mkdir -p ~/.config/terminator/
ln -sf "$DOTFILES"/terminator/config ~/.config/terminator/config
