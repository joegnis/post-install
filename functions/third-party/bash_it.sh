#!/bin/bash

mkdir -p ~/.bash
(
    source ~/.bashrc
    if [ -z "$(type -t bash-it)" ]; then
        git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash/bash_it
        ~/.bash/bash_it/install.sh --silent --no-modify-config 
    fi
)
