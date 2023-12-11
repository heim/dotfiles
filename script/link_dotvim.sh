#!/bin/bash
set -e

if [[ -d ~/.vim ]]; then 
  echo ".vim folder exists, removing" 
  rm -r ~/.vim
fi

ln -s ~/dotfiles/dotvim ~/.vim

if [[ -f ~/.vimrc ]]; then 
  echo "vimrc exists, removing"
  rm ~/.vimrc
fi
ln -s ~/.vim/vimrc ~/.vimrc
