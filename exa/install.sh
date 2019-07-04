#!/bin/bash

if [[ "$(uname -s)" = "Darwin" ]]; then
    if brew ls --versions > /dev/null; then
      brew outdated exa > /dev/null || brew upgrade exa
    else
     brew install exa
    fi
fi
