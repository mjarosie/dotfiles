#!/bin/bash

DOTFILES_REPO_DIR_PATH="$(realpath "${0}" | xargs dirname)"

echo "Linking .vimrc"
# Will create a symbolic link from ~/.vimrc to ~/.dotfiles/files/.vimrc
ln --symbolic "$DOTFILES_REPO_DIR_PATH/files/.vimrc" ~/.vimrc
