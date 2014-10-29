#!/bin/sh

mkdir -p ~/.vim/bundle
mkdir -p ~/.vim/colors
mkdir -p ~/.vim/config
mkdir -p ~/.vim/spell
mkdir -p ~/.vim/syntax

# Clone vundle
git clone https://github.com/gmariK/vundle.git ~/.vim/bundle/vundle

# Install bundles
vim +BundleInstall +qall
