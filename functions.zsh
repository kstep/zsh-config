function psq () {
    ps aux | grep [${1:0:1}]${1:1}
}

function activate () {
    dir=$(back env/bin/activate) || return
    source $dir/env/bin/activate
}

function back () {
    filename="./$1"
    dirscount=${2:--1}
    startdir="$PWD"

    while ! [ -e "$filename" -o $dirscount = 0 -o "$PWD" = "/" ]; do
        cd ..
        dirscount=$(( $dirscount - 1 ))
    done

    result="$PWD"
    cd "$startdir"

    [ -e "$result/$filename" ] || return 1
    echo $result
}

alias -g CL='| source-highlight --outlang-def=esc.outlang --style-file=esc.style -s log'
alias -g C='| source-highlight --outlang-def=esc.outlang --style-file=esc.style -s'
alias ccat='source-highlight --outlang-def=esc.outlang --style-file=esc.style -i'

alias -s jar='java -jar'

function bcc() {
	echo scale=5\;$@ | bc
}

function tf() {
	tailf $@ CL
}

function man() {
        \vim -c ":RMan $*" -c ":redraw!"
}

function pmver() {
    perl -M$1 -E "say \$$1::VERSION;"
}

# vim: filetype=zsh
