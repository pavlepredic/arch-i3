#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export PATH="/opt/scripts:/opt/bin:${PATH}"
export QT_QPA_PLATFORMTHEME=qt5ct
