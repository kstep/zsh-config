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


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/kstep/google-cloud-sdk/path.zsh.inc' ]; then . '/home/kstep/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/kstep/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/kstep/google-cloud-sdk/completion.zsh.inc'; fi
