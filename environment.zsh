# Just an enviroment setup.

# I use **Vim** as my primary editor, `less` as a pager, **Chromium** with
# **Vimium** extension for browser experience.
export EDITOR="/usr/bin/vim"
export PAGER="/usr/bin/less"
export BROWSER="/usr/bin/tabbed -ps0 -d -n Browser -f /usr/bin/vimb -e"
export LESS="-r -S"

# I like playing around with **NodeJS** sometimes.
export NODE_PATH="/usr/lib/node_modules"

# PATH extension.
export PATH="/usr/lib/ruby/gems/1.9.1/bin:$PATH:$HOME/bin:/opt/android-sdk/platform-tools"

# This is for Android development.
export CLASSPATH=/opt/android-sdk/platforms/android-19/android.jar

# Locale. I prefer English messages in programs, but time format is best
# percieved in d/m/Y, not m/d/Y.
export LC_ALL=en_US.UTF-8
export LC_TIME=ru_RU.UTF-8

# Chrome & chromium options: move cache to tmpfs.
export CHROMIUM_USER_FLAGS="--disk-cache-dir=/tmp --disk-cache-size=50000000 --ignore-certificate-errors"
export CHROME_USER_FLAGS="$CHROMIUM_USER_FLAGS"

# This is the placement of todo.sh config file
export TODOTXT_CFG_FILE="$HOME/.config/todo/config"
