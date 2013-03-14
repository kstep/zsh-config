# This is a zsh-syntax-highlighting[1] plugin configuration. 
# Yes, I like colors in command line.

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Highlight MAC addresses, IPs.
ZSH_HIGHLIGHT_PATTERNS+=('[0-9a-fA-F][0-9a-fA-F]:[0-9a-fA-F][0-9a-fA-F]:[0-9a-fA-F][0-9a-fA-F]:[0-9a-fA-F][0-9a-fA-F]:[0-9a-fA-F][0-9a-fA-F]:[0-9a-fA-F][0-9a-fA-F]' 'fg=yellow')
ZSH_HIGHLIGHT_PATTERNS+=(' [0-9]##.[0-9]##.[0-9]##.[0-9]##' 'fg=yellow')

# Highlight complex redirection signes.
ZSH_HIGHLIGHT_PATTERNS+=('[0-9]#[<>]&[-!|0-9]#' 'fg=blue')
ZSH_HIGHLIGHT_PATTERNS+=('[<>]([<>]|)([|!]|)' 'fg=blue')
ZSH_HIGHLIGHT_PATTERNS+=('&[|!]' 'fg=blue')

# Other custom colors.
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=blue'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=magenta,bold'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=magenta'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=magenta'
ZSH_HIGHLIGHT_STYLES[assign]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=cyan'

