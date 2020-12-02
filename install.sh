#!/bin/bash

set -e
export LC_ALL="en_US.UTF-8"

if [ ! -d ~/.oh-my-zsh ]; then
    git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi
chsh -s /bin/zsh

for f in `ls . `
do
    if [[ $f == "install.sh" ]] ; then
        continue
    fi

    ln -fs ~/dotfiles/$f ~/.${f}
done

mkdir $ZSH_CUSTOM/themes/
ln -fs ~/dotfiles/blinks.zsh-theme $ZSH_CUSTOM/themes/

if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
vim +BundleInstall +qall

if [ ! -d ~/fonts ]; then
    git clone https://github.com/powerline/fonts.git ~/fonts
    ~/fonts/install.sh
fi

zsh

open solarized_dark.itermcolor
