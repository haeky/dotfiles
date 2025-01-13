#!/bin/bash

set -e
export LC_ALL="en_US.UTF-8"

if [ ! -d ~/.oh-my-zsh ]; then
    git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi

if ! command -v fzf &> /dev/null; then
  printf "Installing fzf"
  sudo apt-get -y install fzf
fi

if [ "$SPIN" ]; then
  if ! command -v rg &> /dev/null; then
    printf "Installing ripgrep"
    sudo apt-get -y install ripgrep
  fi
fi

for f in `ls . `
do
    if [[ $f == "install.sh" ]] ; then
        continue
    fi

    ln -fs ~/dotfiles/$f ~/.${f}
done

if [ ! -d ~/.vim/plugin/Vundle.vim ]; then
    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/plugin/Vundle.vim
fi

if [ ! -d ~/fonts ]; then
    git clone https://github.com/powerline/fonts.git ~/fonts
    ~/fonts/install.sh
fi

ln -fs ~/dotfiles/blinks.zsh-theme ~/.oh-my-zsh/custom/themes/
vim -E -u NONE -S ~/.vimrc +PluginInstall +qall
