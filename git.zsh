zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' unstagedstr '?'
zstyle ':vcs_info:*' stagedstr '+'
zstyle ':vcs_info:*' formats '@%b%u%c'
zstyle ':vcs_info:*' actionformats '@%b%u%c:%a'
zstyle ':vcs_info:*' check-for-changes true

autoload -Uz vcs_info

precmd ()
{
    vcs_info
    return 0;
}

# vim: filetype=zsh
