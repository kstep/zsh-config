# The script stores dirs stack into given file and restore it on shell start.

# First we configure this feature.
DIRSTACKSIZE=40
DIRSTACKFILE=~/.cache/zsh/dirstack

# The load dirs into stack from given file.
if [[ -f $DIRSTACKFILE && $#dirstack -eq 0 ]]; then
    dirstack=( ${(f)"$(< $DIRSTACKFILE)"} )
    [[ -d $dirstack[1] ]] && cd $dirstack[1] && cd $OLDPWD
fi

# At last we add a function to store dirs stack on dir change.
function chpwd () {
    print -l $PWD ${(u)dirstack} > $DIRSTACKFILE
}

