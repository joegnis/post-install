#!/bin/bash
# Install pyenv to default location: ~/.pyenv.
# Make sure dotfiles include settings needed.

(
    if [ ! -d "~/.pyenv" ]; then
        git clone https://github.com/pyenv/pyenv.git ~/.pyenv
    fi
)
