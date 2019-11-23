#!/bin/sh
if command -v code >/dev/null; then
	if [ "$(uname -s)" = "Darwin" ]; then
		VSCODE_HOME="$HOME/Library/Application Support/Code"
	else
		VSCODE_HOME="$HOME/.config/Code"
	fi
	mkdir -p "$VSCODE_HOME/User"

	ln -snf "$DOTFILES/vscode/settings.json" "$VSCODE_HOME/User/settings.json"
	ln -snf "$DOTFILES/vscode/keybindings.json" "$VSCODE_HOME/User/keybindings.json"
	ln -snf "$DOTFILES/vscode/snippets" "$VSCODE_HOME/User/snippets"

	while read -r module; do
		code --install-extension "$module" || true
	done <"$DOTFILES/vscode/extensions.txt"
fi
