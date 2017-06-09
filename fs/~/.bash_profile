#
# ~/.bash_profile
#

if test -d ~/.environment.d/; then
    for environment in ~/.environment.d/*.sh; do
        . "$environment"
    done
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx
fi

