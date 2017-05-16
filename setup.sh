#!/bin/bash
DIR="$( cd "$( dirname "$0" )" && pwd )"

# Copy bash_profile contents over
cat $DIR/.bashrc >> ~/.bashrc

# Set up symbolic links
ln -s $DIR/.vim ~/.vim
ln -s $DIR/.vimrc ~/.vimrc

# Install VIM Plugins
mkdir ~/.vim/bundle
cd ~/.vim/bundle
git clone https://github.com/tpope/vim-fugitive
git clone https://github.com/scrooloose/syntastic
git clone https://github.com/tpope/vim-surround
git clone https://github.com/kien/ctrlp.vim
git clone https://github.com/bling/vim-airline
git clone https://github.com/valloric/youcompleteme
git clone https://github.com/tpope/vim-rails
git clone https://github.com/vim-ruby/vim-ruby
git clone https://github.com/thoughtbot/vim-rspec
git clone https://github.com/blueshirts/darcula
git clone https://github.com/tpope/vim-sensible
