#!/usr/bin/env zsh
# -*- mode: sh; sh-indentation: 4; indent-tabs-mode: nil; sh-basic-offset: 4;

if command -v rbenv >/dev/null 2>&1; then
    echo > /dev/null
elif command -v brew >/dev/null 2>&1; then
    brew install rbenv rbenv-aliases rbenv-binstubs rbenv-bundle-exec ruby-build
elif command -v yay >/dev/null 2>&1; then
    yay -Sy --needed --noprovides --noconfirm base-devel libffi libyaml openssl zlib
    yay -Sy --needed --noprovides --noconfirm rbenv ruby-build rbenv-binstubs
else
    curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer | bash
    [[  -d ~/.rbenv ]] || mkdir -p ~/.rbenv/plugins
    [[ -d ~/.rbenv/plugins/ruby-build ]] || git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
fi



