# Zshell completion system configuration.
#
# I use spell corrections in my completions (up to 2 errors) and menu to choose
# propositions from.

zstyle ':completion:*' completer _expand _complete _approximate
zstyle ':completion:*' list-colors 'di=34:ln=35:ex=31:so=32:pi=33'
zstyle ':completion:*' max-errors 2
zstyle ':completion:*' menu select=long-list select=0
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
zstyle :compinstall filename '/home/kstep/.zshrc'

autoload -U compinit
compinit

