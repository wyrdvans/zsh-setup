# This file gets run by both interactive and non-interactive shells.
# Place environment variables here.

typeset -U path

SYSTEM_TYPE=`uname`
case "$SYSTEM_TYPE" in
    'Linux')
        export EDITOR="/usr/bin/emacs"
        ;;
    'Darwin')
        export EDITOR="/Applications/Emacs.app/Contents/MacOS/Emacs"
        path=(. ~/bin /usr/local/bin /opt/local/bin /opt/local/sbin $path)
        ;;
esac

