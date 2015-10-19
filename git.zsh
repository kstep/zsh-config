# This is my `vcs_info` zsh plugin configuration.

# I use `git` only, here I enable it.
zstyle ':vcs_info:*' enable git

# Stage and unstage markers.
zstyle ':vcs_info:*' unstagedstr '?'
zstyle ':vcs_info:*' stagedstr '!'

# Banners format.
zstyle ':vcs_info:*' formats ' %b%u%c'
zstyle ':vcs_info:*' actionformats ' %b%u%c:%a'
zstyle ':vcs_info:*' check-for-changes true

autoload -Uz vcs_info
