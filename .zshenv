# This file gets run by both interactive and non-interactive shells.
# Place environment variables here.

typeset -U path

SYSTEM_TYPE=`uname`
case "$SYSTEM_TYPE" in
    'Linux')
        export EDITOR="/usr/bin/emacsclient"
        export ALTERNATE_EDITOR="/usr/bin/emacs"
	if [ $SUDO_USER ]; then
	    export SVN_SSH="ssh -o \"IdentitiesOnly yes\" -i /home/users/jasons/.ssh/svn-id_rsa -l $SUDO_USER"
	fi
        ;;
    'Darwin')
        path=(. ~/bin /Applications/MacPorts/Emacs.app/Contents/MacOS/bin /usr/local/bin /usr/local/git/bin /opt/local/bin /opt/local/sbin $path)
        export EDITOR="emacsclient -c"
        export VISUAL="emacsclient -c"
        export ALTERNATE_EDITOR=""
        export TEX="/usr/texbin"
        ;;
esac

