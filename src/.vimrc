scriptencoding utf-8
set nocompatible
filetype off

if filereadable(expand('~/.vim.d/neobundle.vim'))
  source ~/.vim.d/neobundle.vim
endif

filetype plugin on
filetype indent on

if filereadable(expand('~/.vim.d/config/options.vim'))
  source ~/.vim.d/config/options.vim
endif

NeoBundle 'Shougo/neobundle.vim'

