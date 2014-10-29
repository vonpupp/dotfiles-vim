set nocompatible
set novisualbell
set noerrorbells

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc nested source %

" Leader key
let mapleader=" "

" Vundle setup
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" Load *.vim on the ~/.vim/config folder
runtime! config/*.vim
"syntax on
"filetype plugin indent on
