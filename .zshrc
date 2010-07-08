HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
SYSTEM_TYPE=`uname`
case "$SYSTEM_TYPE" in
    'Linux')
        bindkey "^?" backward-delete-char
        bindkey "^[[3~" delete-char
        ;;
    'Darwin')
        ;;
esac
# The following lines were added by compinstall
#zstyle :compinstall filename '/home/wyrdvans/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Load Aliases
if [[ -r ~/.aliasrc ]]; then
    . ~/.aliasrc
fi
if [[ -r ~/.aweber.aliases ]]; then
    . ~/.aweber.aliases
fi

# Load functions
if [ -d ~/.zfunc ]; then
    fpath=($fpath ~/.zfunc)
    autoload -U ~/.zfunc/*(:t)
fi
if [ -d ~/.aweber.zfunc ]; then
    fpath=($fpath ~/.aweber.zfunc)
    autoload -U ~/.aweber.zfunc/*(:t)
fi

# Setup prompt
autoload -U colors && colors
PROMPT="%{$fg[magenta]%}(%(!.%{$fg[red]%}.%{$fg[cyan]%})%n%{$fg[cyan]%}@%m%{$reset_color%}: %{$fg[yellow]%}%~%{$fg[magenta]%})%{$reset_color%}%# " # default prompt
RPROMPT="%{$fg[magenta]%}[%{$fg[yellow]%}%D{%R %m/%d/%Y}%{$fg[magenta]%}]%{$reset_color%}" # prompt for right side of screen
