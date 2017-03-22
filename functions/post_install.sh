#!/bin/bash

function post_install {
    # Pull dotfiles from Github
    show_info "Pulling dotfiles from Github..."
    rm ~/.bashrc
    git clone --recursive https://github.com/joegnis/dotfiles ~/.dotfiles
    ~/.dotfiles/install
    show_info "Done"

    show_info "Installing vim plugins..."
    # Install vim plugins
    vim -i NONE -c PlugInstall -c quitall > /dev/null
    show_info "Done"

    # Install zsh plugins
    show_info "Installing zsh plugins..."
    zsh -ic "source .zshrc; antigen update"
    show_info "Done"

    # Change login shell to zsh
    show_info "Changing login shell to zsh..."
    sudo usermod -s /bin/zsh $(whoami)
    show_info "Done"

    show_success "Post-installation complete."
}
