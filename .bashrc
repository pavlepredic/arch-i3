#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

if test -d ~/.environment.d/; then
    for environment in ~/.environment.d/*.sh; do
        test -r "$environment" && . "$environment"
    done
    unset environment
fi

