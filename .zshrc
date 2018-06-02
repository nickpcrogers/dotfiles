# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/nick/.zshrc'


autoload -Uz compinit
compinit
# End of lines added by compinstall

fpath+=('/usr/local/lib/node_modules/pure-prompt/functions')

alias ls='ls --color=auto'

# Prompt
autoload -U promptinit
autoload -U colors && colors
promptinit
#PROMPT="%{$fg_bold[blue]%}[%(4~|.../%3~|%~)]%{$reset_color%}%{$fg_bold[black]%} %#: %{$reset_color%}"
prompt pure

#env variables
export EDITOR=vim
export PATH=$PATH:~/.bin
