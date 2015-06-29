#!/bin/sh

# Compile YCM
#cd ~/.vim/bundle/YouCompleteMe
#cd ~/.vim/bundle/YouCompleteMe
git clone https://github.com/Valloric/YouCompleteMe ~/.vim/bundle/YouCompleteMe --depth 1 --recursive
#git submodule update --init --recursive
##./install.sh --clang-completer
~/.vim/bundle/YouCompleteMe/install.sh
