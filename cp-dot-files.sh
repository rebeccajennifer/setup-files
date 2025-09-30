#!/usr/bin/bash
#_______________________________________________________________________________
# Run this script to copy the dot files to your home directory.
#_______________________________________________________________________________

cp    vim/.vimrc ~
cp    vim/flux*  ~/.vim/colors
cp    .tmux.conf ~
cp    .zshrc     ~
cp -r .themes    ~
