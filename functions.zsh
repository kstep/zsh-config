# Functions are defined here.

# Find + grep combination I use very often.
# First argument is file template, sencond is pattern to search.
function ffg () {
    find . -name "$1" -exec grep "$2" {} +
}

# This is like `psg`, but excludes `grep` process from output.
function psq () {
    ps aux | grep [${1:0:1}]${1:1}
}

# Activate Python virtualenv.
# This function looks for Python's virtual environment upward in
# directories hierarchy, the environment must be deployed in `env`
# directory. If it finds it, it activates the virtualenv.
function activate () {
    env=${1:-env}
    dir=$(back $env/bin/activate) || return
    source $dir/$env/bin/activate
}

# Backward directory search.
# Look for given filename from current directory upward, can be given
# second optional argument to limit number of directories to travel.
#
# Example:
#
#     # Look for .zshrc file if it exists somewhere in hierarchy:
#     FOUND=$(back .zshrc)
#     # The same as above, but look for 3 directories upward only:
#     FOUND=$(back .zshrc 3)
#
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

# Very simple `bc` wrapper.
# Just type `bcc 2+2*2` to calculate.
function bcc() {
    echo scale=5\;$@ | bc
}

# Colorized `tail -f` shortcut.
function tf() {
    tailf $@ CL
}

# I use `vim` to read man pages.
function man() {
    \nvim -c ":RMan $*" -c ":redraw!"
}

# This function is to tell me version of arbitrary perl module. Just type
# `pmver Module::Name` to see Module::Name's version.
function pmver() {
    perl -M$1 -E "say \$$1::VERSION;"
}

# The function to fetch SSL certificate from remote host.
# Example usage is `cert secure.example.com` or `cert secure.example.com 443`,
# second argument is port number, it's optional and defaults to 443.
function cert() {
    openssl s_client -connect ${1}:${2:-443} </dev/null 2>/dev/null | sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p'
}

# The function to run MPlayer from console via fbdev
function cplayer() {
    setterm -cursor off
    mplayer -vo fbdev2 -vf scale=1600:900 -quiet -heartbeat-cmd 'setterm -blank poke' $*
    setterm -cursor on
}

# With this function I can run Google search from command line!
function gg() {
    xdg-open "http://www.google.com/search?q=$*"
}

# Google's "I'm feeling lucky" search shortcut
function ifl() {
    xdg-open "https://www.google.com/search?btnI=1&q=$*"
}

# Copy with verbose statistics using "cp"
function cpv() {
    if [ $# -ne 2 ] || [ ! -f "$1" ]; then
        echo "Usage:"
        echo "  cpv <file> <file|directory>"
        return 1
    fi

    if [ -d "$2" ]; then
        pv "$1" > "$2/$(basename "$1")"
    else
        pv "$1" > "$2"
    fi
}

# Sleep till given date/time, as accepted by `date -d`
function sleeptill() {
    sleep $(( $(date -d "$1" +%s) - $(date +%s) ))
}
