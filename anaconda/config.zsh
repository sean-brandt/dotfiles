#!/bin/zsh

export ANACONDA_HOME="${ANACONDA_HOME:=/usr/local/anaconda3}"

[ -f "${ANACONDA_HOME}/etc/profile.d/conda.sh" ]. "${ANACONDA_HOME}/etc/profile.d/conda.sh"

