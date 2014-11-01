#!/bin/bash

set -e
export LC_ALL="en_US.UTF-8"

if [ ! -d ~/.oh-my-zsh ]; then
    git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi
chsh -s /bin/zsh

for f in `ls . `
do
    if [[ $f == "deploy.sh" ]] ; then
        continue
    fi
    if [ -d $f ]; then
        mkdir -p ~/.${f}
        cp -f -r ${f}/* ~/.${f}
    else
        cp -f $f ~/.${f}
    fi
done

if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
vim +BundleInstall +qall

git config --global user.name "Laurent Dang"
git config --global user.email "dang.laurent@gmail.com"

zsh
