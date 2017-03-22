#!/bin/bash
function install_thirdparty {
    local dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
    local old=$(cd)
    cd "$dir/third-party"

    local found=0
    while read file; do
        # Grant permission if needed
        [ -x "$file" ] || chmod u+x "$file"
        # Extract program's name
        local filename="$(basename "$file")"
        local program="${filename%.*}"

        # Install
        show_info "Installing $program..."
        ./"$file"
        exitstatus=$?

        # Check
        if [ $exitstatus -ne 0 ]; then
            show_error 'Installation does not succeed. '
        else
            show_success "Installed $program."
        fi

        found=1
    done < <( find . -maxdepth 1 -type f -name '*.sh' )

    if [ $found -eq 0 ]; then
        show_info "No third party program is found"
        exitstatus=1
    else
        show_success "Installation complete."
    fi
    cd $old
}
