#!/bin/bash
if [[ "$(uname -s)" = "Darwin" ]]; then
  brew tap | grep -q 'getantibody/tap' || brew tap getantibody/tap
  brew install antibody
else
  curl -sfL git.io/antibody | sudo sh -s - -b /usr/local/bin
fi
antibody bundle <"$DOTFILES/antibody/bundles.txt" >~/.zsh_plugins.sh
[[ -d ~/.zsh_custom ]] && antibody bundle ~/.zsh_custom >> ~/.zsh_plugins.sh
antibody update
