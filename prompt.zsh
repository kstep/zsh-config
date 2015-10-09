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


# Command time calculation took from [pure prompt](https://github.com/sindresorhus/pure/blob/master/pure.zsh).

prompt_pure_human_time() {
    local human=" " total_seconds=$1 var=$2
    local days=$(( total_seconds / 60 / 60 / 24 ))
    local hours=$(( total_seconds / 60 / 60 % 24 ))
    local minutes=$(( total_seconds / 60 % 60 ))
    local seconds=$(( total_seconds % 60 ))
    (( days > 0 )) && human+="${days}d"
    (( hours > 0 )) && human+="${hours}h"
    (( minutes > 0 )) && human+="${minutes}m"
    human+="${seconds}s"

    typeset -g "$var"="$human"
}

prompt_pure_cmd_timestamp=$EPOCHSECONDS
prompt_pure_check_cmd_exec_time() {
    integer elapsed
    (( elapsed = EPOCHSECONDS - ${prompt_pure_cmd_timestamp:-$EPOCHSECONDS} ))
    typeset -g prompt_pure_cmd_timestamp=$EPOCHSECONDS
    prompt_pure_human_time=
    (( elapsed > ${PURE_CMD_MAX_EXEC_TIME:=5} )) && { prompt_pure_human_time $elapsed prompt_pure_human_time }
}

precmd() {
    prompt_pure_check_cmd_exec_time
}

#export RPROMPT=$'%(0?..%{$fg_bold[red]%}[%?]%{$reset_color%})[ %{$fg_bold[red]%}%5(~.….)%4~%{$fg_no_bold[cyan]%}${vcs_info_msg_0_}%{$reset_color%} ][ %{$fg_bold[green]%}%n@%{$fg_bold[blue]%}%m%{$reset_color%} %{$fg_bold[magenta]%}%l%{$reset_color%} ]'
#export RPROMPT=$'[%{$fg_bold[red]%}%5(~.….)%4~%{$fg_no_bold[cyan]%}${vcs_info_msg_0_}%{$fg_bold[magenta]%}:%l%{$reset_color%}]'
export PROMPT=$'%F{cyan} — %F{green}%5(~.….)%4~%F{242}${vcs_info_msg_0_}%F{magenta} %l%F{cyan}%(0?..%F{red}‹%?›)%F{yellow}${prompt_pure_human_time}%f: '

#
# This is a replacement for EOL sign if output is missing last NL character.
# Example:
#
#     $ echo -n 123
#     123↲
#
# Default is percent sign `%`, but I like fancy Unicode characters =)
#
export PROMPT_EOL_MARK=$'%K{cyan}%F{black}↲%k%f'

