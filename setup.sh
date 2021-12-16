#!/bin/bash
set -e

if test ! $(which brew); then
  echo "Installing homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
echo "Updating homebrew"
brew update
brew bundle


if ! [[ -d ~/.oh-my-zsh ]]; then
  echo "Installing oh-my-zsh"
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

echo "Linking custom oh-my-zsh stuff"
if [[ -f ~/.oh-my-zsh/custom/example.zsh ]]; then
  echo "Example folder exists in oh-my-zsh. Deleting"
  rm -r ~/.oh-my-zsh/custom
  ln -s ~/dotfiles/oh-my-zsh-custom ~/.oh-my-zsh/custom
fi

if [[ -f  ~/.zshrc ]]; then
  rm ~/.zshrc
fi
ln -s ~/.oh-my-zsh/custom/zshrc ~/.zshrc

echo "Symlinking dotfiles"
./symlink_dotfiles.sh


