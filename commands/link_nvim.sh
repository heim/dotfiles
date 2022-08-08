#!/bin/bash
set -e

if [[ -d ~/.config/nvim ]]; then 
  echo ".config/nvim folder exists, removing" 
  rm -r ~/.config/nvim
fi

ln -s ~/dotfiles/nvim ~/.config/nvim

