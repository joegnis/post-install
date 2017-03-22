#!/bin/bash

antigen_type="$(zsh -c 'source ~/.zshrc; whence -w antigen' | cut -d':' -f2 | \
    sed -e 's/^[[:space:]]*//')"

if [ -z "$(which zsh)" -o -n "$(which zsh)" -a "$antigen_type" != function ]; then
    mkdir -p ~/.zsh/antigen
    git clone https://github.com/zsh-users/antigen.git ~/.zsh/antigen/src
fi
