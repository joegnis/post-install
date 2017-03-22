#!/bin/bash
function install_packages {
    local dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
    local PACKAGES="$dir/../data/packages.list"

    show_warning 'Requires root privileges'
    show_info 'Updating repos...'
    sudo apt-get update
    show_info 'Installing...'
    sudo apt-get install -y $(cat $PACKAGES)
    exitstatus=$?
    # Check
    if [ $exitstatus -ne 0 ]; then
        show_error 'Installation does not succeed. '
    else
        show_success "Installation complete."
    fi
}
