#! /bin/sh

rm ~/.gitconfig
ln -s ~/dotfiles/gitconfig ~/.gitconfig
rm ~/.tmux.conf
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
rm -rf ~/.config/nvim
ln -s ~/dotfiles/nvim ~/.config/nvim
rm -rf ~/.config/kitty
ln -s ~/dotfiles/kitty ~/.config/kitty
