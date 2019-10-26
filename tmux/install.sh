#!/bin/bash -vx

if [[ "$(uname -s)" = "Darwin" ]]; then
    brew install tmux reattach-to-user-namespace
else
    brew install tmux
fi

[[ -f ~/.tmux.conf.local ]] || cp "${DOTFILES}/tmux/tmux/.tmux.conf.local" ~
