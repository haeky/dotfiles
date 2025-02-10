#!/bin/bash

set -e
export LC_ALL="en_US.UTF-8"

if [[ "$OSTYPE" == "darwin"* ]]; then
  brew install tmux
  brew install neovim
  brew install fzf
  brew install zsh-syntax-highlighting
elif [[ "$OSTYPE" == "linux"* ]]; then
  sudo apt-get update
  sudo apt-get install -y neovim
  sudo apt-get install -y fzf
  sudo apt-get install -y zsh-syntax-highlighting
fi

if [ ! -d "$HOME/.zsh/pure" ]; then
  mkdir -p "$HOME/.zsh/pure"
  git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
fi

if [ ! -d "$HOME/.tmux/plugins" ]; then
  mkdir -p "$HOME/.tmux/plugins"

  git clone https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm"
  git clone https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/catppuccin/"
fi

for f in $(ls .); do
  if [[ $f == "install.sh" ]]; then
    continue
  fi

  if [[ $f == "config" && -d "$HOME/.config" ]]; then
    for config in $(ls config/); do
      ln -fs "$HOME/dotfiles/config/$config" "$HOME/.config/"
    done
  else
    ln -fs "$HOME/dotfiles/$f" "$HOME/.${f}"
  fi
done
