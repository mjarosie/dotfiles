#!/bin/bash

# Get the directory of the script (https://stackoverflow.com/a/56694491/3088888)
DOTFILES_REPO_DIR_PATH=$(cd $(dirname $0) && pwd)

echo "Linking .vimrc"
ln --symbolic "$DOTFILES_REPO_DIR_PATH/files/.vimrc" ~/.vimrc

echo "Linking .gitconfig"
ln --symbolic "$DOTFILES_REPO_DIR_PATH/files/.gitconfig" ~/.gitconfig

echo "Linking .tmux.conf"
ln --symbolic "$DOTFILES_REPO_DIR_PATH/files/.tmux.conf" ~/.tmux.conf
