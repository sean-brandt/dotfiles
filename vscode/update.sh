#!/usr/bin/env zsh
# -*- mode: sh; sh-indentation: 4; indent-tabs-mode: nil; sh-basic-offset: 4; -*-
set -e
code --list-extensions >"$DOTFILES/vscode/extensions.txt"
