#!/bin/bash

function post_install {
    # Install dotfiles
    show_info "Installing dotfiles..."
    git clone --recursive https://github.com/joegnis/dotfiles ~/.dotfiles
    ~/.dotfiles/install
    show_info "Done"

    # Install local dotfiles
    show_info "Installing local dotfiles..."
    git clone -b superlists-server --recursive \
        https://github.com/joegnis/dotfiles ~/.dotfiles_local
    ~/.dotfiles_local/install
    show_info "Done"

    # Install vim plugins
    show_info "Installing vim plugins..."
    vim +silent +PlugInstall +quitall > /dev/null
    show_info "Done"

    # Install zsh plugins
    show_info "Installing zsh plugins..."
    zsh -ic "source ~/.zshrc; antigen update"
    show_info "Done"

    # Change login shell to zsh
    show_info "Changing login shell to zsh..."
    sudo usermod -s "$(which zsh)" "$(whoami)"
    show_info "Done"

    show_success "Post-installation complete."
}
