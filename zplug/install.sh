#!/bin/sh

[[ -d ~/.zplug ]] || curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
true