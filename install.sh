#!/bin/bash

set -e
export LC_ALL="en_US.UTF-8"

if [ ! -d ~/.oh-my-zsh ]; then
    git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi

if [ ! -d ~/.fzf ]; then
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install
fi

if [ "$(uname)" != "Darwin" ]; then
  sudo apt-get install silversearcher-ag
fi

for f in `ls . `
do
    if [[ $f == "install.sh" ]] ; then
        continue
    fi

    ln -fs ~/dotfiles/$f ~/.${f}
done

if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/plugin/Vundle.vim
fi
vim +PluginInstall +qall

if [ ! -d ~/fonts ]; then
    git clone https://github.com/powerline/fonts.git ~/fonts
    ~/fonts/install.sh
fi

ln -fs ~/dotfiles/blinks.zsh-theme ~/.oh-my-zsh/custom/themes/

zsh

open solarized_dark.itermcolor
