#!/bin/zsh
if command -v brew >/dev/null 2>&1; then
    # pass
else
    brew install getantibody/tap/antibody
fi

antibody bundle <"$DOTFILES/antibody/bundles.txt" > ~/.zsh_plugins.sh
[[ -d ~/.zsh_custom ]] && antibody bundle < ~/.zsh_custom >> ~/.zsh_plugins.sh
antibody update
