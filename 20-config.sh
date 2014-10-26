#!/bin/sh
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Clone vundle
git clone https://github.com/gmariK/vundle.git ~/.vim/bundle/vundle

# Install bundles
vim +BundleInstall +qall

# Compile YCM
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
##./install.sh --clang-completer
./install.sh
