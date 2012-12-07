# This is prompt configuration file.
#
# It's history is very long, I experiment with my prompt from time to time.
#
# My current prompt looks like this now:
#
#     [~/.zsh@master?+:pts/6]
#      1---->-2---->34-5--->
#
# 1. My current path, up to 5 directories, if longer, only last five
# directories are visible, and upper directories are replaced with `…` character.
# 2. My current `git` branch, omitted if current directory is not a git repository.
# 3. Question mark means there're unstaged changes in my git workdir.
# 4. Plus sign means there're staged but uncommitted changes in my git workdir.
# 5. This is my current terminal name.
#
# My prompt is colorful as well, but I can't show colors here, so just beleave me =)
#

#export RPROMPT=$'%(0?..%{$fg_bold[red]%}[%?]%{$reset_color%})[ %{$fg_bold[red]%}%5(~.….)%4~%{$fg_no_bold[cyan]%}${vcs_info_msg_0_}%{$reset_color%} ][ %{$fg_bold[green]%}%n@%{$fg_bold[blue]%}%m%{$reset_color%} %{$fg_bold[magenta]%}%l%{$reset_color%} ]'
#export RPROMPT=$'[%{$fg_bold[red]%}%5(~.….)%4~%{$fg_no_bold[cyan]%}${vcs_info_msg_0_}%{$fg_bold[magenta]%}:%l%{$reset_color%}]'
export PROMPT=$'%{$fg_no_bold[cyan]%} — %{$fg_bold[green]%}%5(~.….)%4~%{$fg_no_bold[cyan]%}${vcs_info_msg_0_}%{$fg_bold[magenta]%} %l%{$fg_no_bold[cyan]%}%{$reset_color%}%(0?..%{$fg_bold[red]%}[%?]%{$reset_color%}): '

#
# This is a replacement for EOL sign if output is missing last NL character.
# Example:
#
#     $ echo -n 123
#     123↲
#
# Default is percent sign `%`, but I like fancy Unicode characters =)
#
export PROMPT_EOL_MARK=$'%{$bg[cyan]%}%{$fg_no_bold[black]%}↲%{$reset_color%}'

