#!/bin/bash
# Install pyenv and pyenv-virtualenv to their default locations.
# Make sure dotfiles include required settings.

pyenv_root=~/.pyenv
if [ ! -d "$pyenv_root" ]; then
    git clone https://github.com/pyenv/pyenv.git ~/.pyenv
fi

if [ ! -d "$pyenv_root/plugins/pyenv-virtualenv" ]; then
    git clone https://github.com/pyenv/pyenv-virtualenv.git \
        $pyenv_root/plugins/pyenv-virtualenv 
fi

