#!/bin/bash
brew tap | grep -q 'getantibody/tap' || brew tap getantibody/tap
brew install antibody
antibody bundle <"$DOTFILES/antibody/bundles.txt" >~/.zsh_plugins.sh
antibody update
