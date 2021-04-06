#!/usr/bin/env zsh
# -*- mode: sh; sh-indentation: 4; indent-tabs-mode: nil; sh-basic-offset: 4; -*-

# Don't ask ssh password all the time
if command -v git-credential-manager-core >/dev/null 2>&1; then
	echo > /dev/null
elif command -v brew >/dev/null 2>&1; then
	brew tap microsoft/git
	brew install git-credential-manager-core
	git-credential-manager-core configure
elif command -v yay >/dev/null 2>&1; then
    echo "TODO: create arch package"
	git config --global credential.helper cache
else
	git config --global credential.helper cache
fi

# use vscode as mergetool
if command -v code >/dev/null 2>&1; then
	git config --global merge.tool vscode
	git config --global mergetool.vscode.cmd "code --wait $MERGED"
fi
