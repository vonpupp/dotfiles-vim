set nocompatible
set novisualbell
set noerrorbells

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc nested source %

" Leader key
let mapleader=" "
let maplocalleader=","

" Vundle setup
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" Load *.vim on the ~/.vim/config folder
runtime! config/*.vim
"syntax on
"filetype plugin indent on

" Fix home and end keys within GNU screen
" In case you need to know your keys
" In insert mode press Ctrl+v and the key
map OH <Home>
map OF <End>
imap OH <Home>
imap OF <End>
