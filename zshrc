ZSH=$HOME/.oh-my-zsh

export LC_ALL="en_US.UTF-8"
export GOPATH=$HOME
export PATH=$GOPATH/bin:$PATH

ZSH_THEME="blinks"
alias tmux="TERM=screen-256color-bce tmux"
alias k="kubectl"

bindkey '^[[1;9C' forward-word
bindkey '^[[1;9D' backward-word

alias be="bundle exec"
alias test="ruby -I test"

plugins=(git)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh

if type nvim > /dev/null 2>&1; then
  alias vim='nvim'
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/haeky/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/haeky/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/haeky/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/haeky/google-cloud-sdk/completion.zsh.inc'; fi
