# This is the base of my Zshell configuration.
# To install this configuration, symlink this file to ~/.zshrc:
#
#     ln -s ~/.config/zsh/zshrc ~/.zshrc
#
# This file just loads all `*.zsh` files from `~/.zsh` directory.
# Please don't modify it directly, put your custom config files into `~/.zsh`
# with appropriate name and `zsh` extension.
#

for conf in ~/.config/zsh/*.zsh; do
    source $conf
done

