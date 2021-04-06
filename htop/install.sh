#!/usr/bin/env zsh
# -*- mode: sh; sh-indentation: 4; indent-tabs-mode: nil; sh-basic-offset: 4; -*-

if command -v htop >/dev/null 2>&1; then
    echo > /dev/null
elif command -v brew >/dev/null 2>&1; then
    HOMEBREW_NO_AUTO_UPDATE=1 brew install htop
elif command -v yay >/dev/null 2>&1; then
    yay -Sy --needed --noprovides --noconfirm htop lm_sensors lsof strace
fi
