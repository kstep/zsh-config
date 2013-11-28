# Here come common aliases.
# First `ls` aliases as I used to use them all the time.

alias ls='ls --color=auto'
alias lf='ls -F'
alias ll='ls -lF'

# Change directory aliases
alias cd.='cd ..'
alias cd..='cd ../..'
alias cd...='cd ../../..'
alias cd....='cd ../../../..'
alias cd.....='cd ../../../../..'

# I use git and vim constantly, so I put these aliases here.
alias g='git'
alias v='vim'

# This is a very old alias for `ps ... | grep`, I started using it on FreeBSD,
# and the power of habit is so strong, I can't stop using it.
alias psg='ps aux | grep'

# A set of `find` related aliases for maximum search convinience.
alias ff='find . -xdev -name'
alias -g -- -grep='-exec grep'
alias -g -- -all='{} +'
alias -g -- -one='{} \;'

# All `diff`s must be in unified format.
alias diff='diff -u'

# Password generator alias.
alias mkpass='pwgen 12 1'

# Default options for essential file management commands.
# `rm` and `mv` are so dangerous, they must always ask for confirmation.
alias rm='rm -i'
alias mv='mv -i'

# I like colors!
alias grep='grep --color=auto'

# Super fast search in my home directory.
# I support locate database in ~/.locatedb with my home dir contents
# for fastest search possible.
alias loc='locate -d ~/.locatedb -e'

# Just a shortcut to `source`. Yes, it's a habit as well.
alias so='.'

# Truncate a file without hassle.
alias trunc='truncate -s 0'

# Global aliases for syntax highlighting.
#
# Usage:
#     # Highlight logs
#     tail -f /var/log/nginx.log CL
#
#     # Highlight any pipe output with given language
#     cat myscript.sh C sh
#
#     # Color-cat any file, can fail if can't guess language
#     # from file extension
#     ccat myscript.sh
#
alias -g CL='| source-highlight --outlang-def=esc.outlang --style-file=esc.style -s log'
alias -g C='| source-highlight --outlang-def=esc.outlang --style-file=esc.style -s'
alias ccat='source-highlight --outlang-def=esc.outlang --style-file=esc.style -i'

# This is an alias to put data into X clipboard from command line
alias -g XC='| xclip -selection clipboard -i'

# Global alias to run command in background
alias -g BG='2>&- >&- &|'

# System management aliases to avoid typing long `sudo something` commands.
alias sv='sudo systemctl'

# Suffix aliases.
# Run `*.jar` files with JVM.
alias -s jar='java -jar'
alias -s jnlp='javaws'
