#!/bin/bash

# Helper Functions
show_error(){
    echo -e "\033[1;31m$@\033[m" 1>&2
}
show_info(){
    echo -e "\033[1;32m$@\033[0m"
}
show_warning(){
    echo -e "\033[1;33m$@\033[0m"
}
show_question(){
    echo -e "\033[1;34m$@\033[0m"
}
show_success(){
    echo -e "\033[1;35m$@\033[0m"
}
show_header(){
    echo -e "\033[1;36m$@\033[0m"
}
show_listitem(){
    echo -e "\033[0;37m$@\033[0m"
}

dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Import functions
. "$dir/functions/install_packages.sh"
. "$dir/functions/install_thirdparty.sh"
. "$dir/functions/post_install.sh"

# Install packages
show_header ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
show_header "> INSTALL PACKAGES"
show_header ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
install_packages

# Install third party
show_header ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
show_header "> INSTALL THIRD PARTY"
show_header ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
install_thirdparty

# Post install commands
show_header ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
show_header "> Run Post-installation Commands"
show_header ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
post_install
