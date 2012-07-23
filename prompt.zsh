#export RPROMPT=$'%(0?..%{$fg_bold[red]%}[%?]%{$reset_color%})[ %{$fg_bold[red]%}%5(~.….)%4~%{$fg_no_bold[cyan]%}${vcs_info_msg_0_}%{$reset_color%} ][ %{$fg_bold[green]%}%n@%{$fg_bold[blue]%}%m%{$reset_color%} %{$fg_bold[magenta]%}%l%{$reset_color%} ]'
#export RPROMPT=$'[%{$fg_bold[red]%}%5(~.….)%4~%{$fg_no_bold[cyan]%}${vcs_info_msg_0_}%{$fg_bold[magenta]%}:%l%{$reset_color%}]'
export PROMPT=$'%{$fg_no_bold[cyan]%}[%{$fg_bold[red]%}%5(~.….)%4~%{$fg_no_bold[cyan]%}${vcs_info_msg_0_}%{$fg_bold[magenta]%}:%l%{$fg_no_bold[cyan]%}]%{$reset_color%}%(0?..%{$fg_bold[red]%}[%?]%{$reset_color%}) '

# vim: filetype=zsh
