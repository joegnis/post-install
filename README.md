# post-install

Bootstrap Bash scripts for installing packages and my configuration files after fresh installation of **Ubuntu 16.04**. It's for my personal use.

Inspired by [snwh/ubuntu-post-install](https://github.com/snwh/ubuntu-post-install).

## How to Use

Clone to the local and run `install.sh`.

Ubuntu packages list is in the file [`data/packages.list`](post-install/data/packages.list).

Third-party packages' installation scripts are in `functions/third-party` directory. All the *.sh in it will be run.

Post-installation script is [`functions/post_install.sh`](post-install/functions/post_install.sh). I use it to install my dotfiles, vim plugins, zsh plugins etc.
