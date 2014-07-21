
# I love **Vim** very much, so I use it as main edit mode in zsh
bindkey -v

# Standard history search keybinding.
bindkey '^R' history-incremental-search-backward
bindkey '^P' up-history
bindkey '^N' down-history

bindkey '^A' beginning-of-line
bindkey '^E' end-of-line

bindkey ${key[Up]} up-line-or-search
bindkey ${key[Down]} down-line-or-search

# Reduce timeout to switch to command mode to 0.1 sec
export KEYTIMEOUT=1

# Add right-hand mode indicator to distinguish **Vim** modes
function zle-line-init zle-keymap-select {
    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]% %{$reset_color%}"
    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
    zle reset-prompt
}

# Hook up editing event to change right-hand prompt
zle -N zle-line-init
zle -N zle-keymap-select
