#!/bin/zsh

[[ -f ~/.anaconda_home ]] && source ~/.anaconda_home

export ANACONDA_HOME="${ANACONDA_HOME:=/usr/local/anaconda3}"

if [ -f "${ANACONDA_HOME}/etc/profile.d/conda.sh" ]; then
  source "${ANACONDA_HOME}/etc/profile.d/conda.sh"
fi
