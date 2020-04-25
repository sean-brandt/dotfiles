#!/bin/zsh

if command -v brew >/dev/null 2>&1; then
    brew install rbenv rbenv-aliases rbenv-binstubs rbenv-bundle-exec ruby-build
else
    curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer | bash
    [[  -d ~/.rbenv ]] || mkdir -p ~/.rbenv/plugins
    [[ -d ~/.rbenv/plugins/ruby-build ]] || git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
fi



