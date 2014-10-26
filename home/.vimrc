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

"let $VIM_ROOT = fnamemodify(resolve(expand("<sfile>")), ":p:h")
"source $VIM_ROOT/config/all.vim
source ~/.vim/config/vimrc.vim
" runtime! ~/.vim/config/**/*.vim
" runtime! ~/.vim/config/*.vim
" runtime! ~/.vim/**/*.vim
" runtime! ~/.vim/*.vim

"syntax on
"filetype plugin indent on
