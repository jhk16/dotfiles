#!/bin/bash

# clone Vundle source
# $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# set the runtime path to include Vundle and initialize
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp -r .skeletons ~/
cp -r .vim ~/
cp .vimrc ~/
cp .tmux.conf ~/
cp .tmux.macro* ~/
cp .bashrc ~/

# FZF for bash
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
