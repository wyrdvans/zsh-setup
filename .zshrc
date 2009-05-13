# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/wyrdvans/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Set Editor
EDITOR='emacs'

# Setup prompt
autoload -U colors && colors
PROMPT="%{$fg[magenta]%}(%{$fg[cyan]%}%n@%m%{$reset_color%}: %{$fg[yellow]%}%~%{$fg[magenta]%})%{$reset_color%}%# " # default prompt
RPROMPT="%{$fg[magenta]%}[%{$fg[yellow]%}%D{%R %m/%d/%Y}%{$fg[magenta]%}]%{$reset_color%}" # prompt for right side of screen
