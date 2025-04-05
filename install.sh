#!/bin/bash

# Download vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cp -r ./.skeletons ~/
cp -r ./.vim ~/
cp .vimrc ~/
cp .tmux.conf ~/
cp .tmux.macro* ~/
cp .bashrc ~/
cp .gitconfig ~/

# FZF for bash
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
