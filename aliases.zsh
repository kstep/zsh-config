alias ls='ls --color=auto'
alias lf='ls -F'
alias ll='ls -lF'

alias psg='ps aux | grep'
alias ff='find . -xdev -name'
alias -g -- -grep='-exec grep'
alias -g -- -all='{} +'
alias -g -- -one='{} \;'
alias diff='diff -u'
alias mkpass='pwgen 12 1'

alias rm='rm -i'
alias mv='mv -i'
alias grep='grep --color=auto'
alias loc='locate -d ~/.locatedb -e'
alias so='.'

# vim: filetype=zsh
