#systemctl --user import-environment XDG_VTNR XDG_SESSION_ID XDG_SEAT
systemctl --user set-environment DISPLAY=:0
export $(systemctl --user show-environment | grep SSH_AUTH_SOCK) > /dev/null
