#!/usr/bin/env zsh
# -*- mode: sh; sh-indentation: 4; indent-tabs-mode: nil; sh-basic-offset: 4; -*-
# setups the auto-update
(
	crontab -l | grep -v "dot_update"
	echo "0 */2 * * * $HOME/.dotfiles/bin/dot_update > ${TMPDIR:-/tmp}/dot_update.log 2>&1"
) | crontab -
