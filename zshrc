ZSH=$HOME/.oh-my-zsh

export LC_ALL="en_US.UTF-8"
export GOPATH=$HOME
export EDITOR=vim

ZSH_THEME="blinks"
alias tmux="TERM=screen-256color-bce tmux"
alias k="kubectl"

export FZF_DEFAULT_COMMAND="rg --files --no-ignore-vcs --hidden"

alias be="bundle exec"
alias test="ruby -I test"
alias shopify-dev='/Users/haeky/src/github.com/Shopify/shopify-cli-internal/bin/shopify'

plugins=(git)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if type nvim > /dev/null 2>&1; then
  alias vim='nvim -u ~/.vimrc'
fi

bindkey '^[[1;9C' forward-word
bindkey '^[[1;9D' backward-word
bindkey -s '^P' 'vim $(fzf)\n'
