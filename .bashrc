#
# ~/.bashrc
#

# If not running interactively, don't do anything
## Did I do this?
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#Master Race
export EDITOR=vim
