autoload -Uz zkbd
source $HOME/.zkbd/$TERM-$VENDOR-$OSTYPE || DISPLAY= zkbd

bindkey -e
bindkey ${key[Home]} vi-beginning-of-line
bindkey ${key[End]} vi-end-of-line
bindkey ${key[Up]} up-line-or-search
bindkey ${key[Down]} down-line-or-search
bindkey "^R" history-incremental-search-backward

# vim: filetype=zsh
