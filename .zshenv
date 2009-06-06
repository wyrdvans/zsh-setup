# This file gets run by both interactive and non-interactive shells.
# Place environment variables here.

export EDITOR="emacs"

typeset -U path
path=(. ~/bin /opt/local/bin /opt/local/sbin $path)