#!/bin/bash

ln -s ./dotfiles-webdev/src/.vimrc
ln -s ./dotfiles-webdev/src/.vim.d
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
~/.vim/bundle/neobundle.vim/bin/neoinstall

