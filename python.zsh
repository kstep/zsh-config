# As I develop in python, I put different thingies here to help
# me in python code development.

# Create python module directory by creating directory and making sure
# all directories has __init__.py in them up to the topmost one, so
# each directory is a valid python module.
function mkpymod() {
    modname="$1"
    moddir="${modname//./\/}"

    mkdir -p "$moddir" || return 1

    topdir="$PWD"
    cd "$moddir"
    while [ "$PWD" != "$topdir" ]; do
        touch ./__init__.py
        cd ..
    done
}
