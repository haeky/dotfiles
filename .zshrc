ZSH=$HOME/.oh-my-zsh

ZSH_THEME="blinks"
alias tmux="TERM=screen-256color-bce tmux"

bindkey '^[[1;9C' forward-word
bindkey '^[[1;9D' backward-word

alias be="bundle exec"

plugins=(git)

source $ZSH/oh-my-zsh.sh
source /opt/boxen/env.sh
unsetopt correct_all
