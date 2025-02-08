export EDITOR=nvim
alias vim="nvim"

[[ -x /opt/homebrew/bin/brew ]] && eval $(/opt/homebrew/bin/brew shellenv)

bindkey -s '^P' 'vim $(fzf)\n'

export FZF_DEFAULT_OPTS=" \
--color=bg+:#363a4f,bg:#24273a,spinner:#f4dbd6,hl:#ed8796 \
--color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6 \
--color=marker:#b7bdf8,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796 \
--multi"

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search

autoload -U promptinit; promptinit
prompt pure

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
