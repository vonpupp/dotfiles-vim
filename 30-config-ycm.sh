#!/bin/sh

# Compile YCM
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
##./install.sh --clang-completer
./install.sh
