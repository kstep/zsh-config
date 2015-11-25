systemctl --user import-environment XDG_VTNR
export $(systemctl --user show-environment | grep SSH_AUTH_SOCK)
