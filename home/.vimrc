" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc nested source %

" Leader key
let mapleader=" "
let maplocalleader=","

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" vim-plug load
call plug#begin()
let g:plug_timeout = 120

"
" Bundles
"

" This was the magical line that allowed me to use ultisnips with my modular
" config, see:
" https://github.com/SirVer/ultisnips/blob/master/doc/UltiSnips.txt
"set runtimepath+=~/.vim/plugged/ultisnips

" Load bundle-*.vim on the ~/.vim/config folder
"runtime! config/bundle-*.vim

"runtime! config/bundle-base.vim
"runtime! config/bundle-bible.vim
"runtime! config/bundle-code.vim
"runtime! config/bundle-color.vim
"runtime! config/bundle-ledger.vim
"runtime! config/bundle-minimal.vim
"runtime! config/bundle-python.vim
"runtime! config/bundle-science.vim
"runtime! config/bundle-web.vim
"Plug 'SirVer/ultisnips'



"
" Configs
"

" Load config-*.vim on the ~/.vim/config folder
runtime! config/config-*.vim

"runtime! config/config-base.vim
"runtime! config/config-bible.vim
"runtime! config/config-code.vim
"runtime! config/config-minimal.vim
"runtime! config/config-misc.vim
"runtime! config/config-options.vim
"runtime! config/config-python.vim
"runtime! config/config-science.vim
"runtime! config/config-web.vim
"runtime! config/config-color.vim
"runtime! config/config-keybindings.vim

call plug#end()

" Fix home and end keys within GNU screen
" In case you need to know your keys
" In insert mode press Ctrl+v and the key
map OH <Home>
map OF <End>
imap OH <Home>
imap OF <End>

set nocompatible
set novisualbell
set noerrorbells

syntax on
filetype plugin indent on
