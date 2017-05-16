#!/bin/bash
DIR="$( cd "$( dirname "$0" )" && pwd )"

# Copy bash_profile contents over
cat $DIR/.bashrc >> ~/.bashrc

# Set up directories 
mkdir ~/.vim
mkdir ~/.vim/autoload
mkdir ~/.vim/bundle

# Copy files
cp $DIR/.vimrc ~/.vimrc
cp $DIR/.vim/autoload/pathogen.vim ~/.vim/autoload/pathogen.vim
cp $DIR/.tmux.conf ~/.tmux.conf

# Install VIM Plugins
cd ~/.vim/bundle
git clone https://github.com/tpope/vim-fugitive
git clone https://github.com/scrooloose/syntastic
git clone https://github.com/tpope/vim-surround
git clone https://github.com/kien/ctrlp.vim
git clone https://github.com/bling/vim-airline
git clone https://github.com/tpope/vim-rails
git clone https://github.com/vim-ruby/vim-ruby
git clone https://github.com/thoughtbot/vim-rspec
git clone https://github.com/blueshirts/darcula
git clone https://github.com/tpope/vim-sensible
git clone https://github.com/edkolev/tmuxline.vim
