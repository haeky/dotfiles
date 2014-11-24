ZSH=$HOME/.oh-my-zsh

export LC_ALL="en_US.UTF-8"

ZSH_THEME="blinks"
alias tmux="TERM=screen-256color-bce tmux"

bindkey '^[[1;9C' forward-word
bindkey '^[[1;9D' backward-word

alias be="bundle exec"
alias test="ruby -I test"

plugins=(git)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all
