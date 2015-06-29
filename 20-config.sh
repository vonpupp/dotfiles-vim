#!/bin/sh

mkdir -p ~/.vim/bundle
mkdir -p ~/.vim/colors
mkdir -p ~/.vim/config
mkdir -p ~/.vim/spell
mkdir -p ~/.vim/syntax

# Add molokai
wget https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim -O ~/.vim/colors/molokai.vim

# Clone vundle
git clone https://github.com/gmariK/vundle.git ~/.vim/bundle/vundle

# Install bundles
vim +BundleInstall +qall
