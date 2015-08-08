#!/bin/bash
DIR="$( cd "$( dirname "$0" )" && pwd )"

# Copy bash_profile contents over
cat $DIR/.bash_profile > ~/.bash_profile

# Set up symbolic links
ln -s $DIR/.vim ~/.vim
ln -s $DIR/.vimrc ~/.vimrc

