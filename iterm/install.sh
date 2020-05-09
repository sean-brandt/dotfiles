#!/usr/bin/env zsh
# -*- mode: sh; sh-indentation: 4; indent-tabs-mode: nil; sh-basic-offset: 4; -*-

[ "$(uname -s)" != "Darwin" ] && exit 0
sed "s;/Users/carlos;$HOME;g" \
	"$DOTFILES"/iterm/com.googlecode.iterm2.plist.example >"$DOTFILES"/iterm/com.googlecode.iterm2.plist
defaults write com.googlecode.iterm2 "PrefsCustomFolder" -string "$DOTFILES/iterm"
defaults write com.googlecode.iterm2 "LoadPrefsFromCustomFolder" -bool true
