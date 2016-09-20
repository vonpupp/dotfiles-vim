#!/bin/sh
DIRNAME=`dirname $0`

source $DIRNAME/.vars
source ~/.homesick/repos/homeshick/homeshick.sh
homeshick link $REPO_NAME

# YOUCOMPLETEME
git clone https://github.com/Valloric/YouCompleteMe ~/.vim/bundle/YouCompleteMe --depth 1 --recursive
~/.vim/bundle/YouCompleteMe/install.sh

# VIM
mkdir -p ~/.vim/bundle
mkdir -p ~/.vim/colors
mkdir -p ~/.vim/config
mkdir -p ~/.vim/spell
mkdir -p ~/.vim/syntax

# COLORS
wget https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim -O ~/.vim/colors/molokai.vim

# VUNDLE
git clone https://github.com/gmariK/vundle.git ~/.vim/bundle/vundle

# INSTALL
vim +BundleInstall +qall
