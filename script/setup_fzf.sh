#! /bin/bash


if test  $(which fzf); then
  echo "setting up fzf"
  $(brew --prefix)/opt/fzf/install
else
  echo "fzf not installed, please install it first"
fi

