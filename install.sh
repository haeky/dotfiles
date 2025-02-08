#!/bin/bash

set -e
export LC_ALL="en_US.UTF-8"

if [[ "$OSTYPE" == "darwin"* ]]; then
  brew install tmux
  brew install neovim
  brew install fzf
  brew install zsh-syntax-highlighting
  brew install pure
fi

if [ ! -d "~/.tmux" ]; then
  mkdir -p ~/.tmux/plugins

  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/catppuccin/
fi

for f in $(ls .); do
  if [[ $f == "install.sh" ]]; then
    continue
  fi

  if [[ $f == ".config" && -d ~/.config ]]; then
    for config in $(ls .config); do
      ln -fs ~/dotfiles/.config/$config ~/.config/$config
    done
  else
    ln -fs ~/dotfiles/$f ~/.${f}
  fi
done
