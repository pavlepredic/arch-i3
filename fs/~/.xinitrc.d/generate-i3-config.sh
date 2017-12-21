#!/bin/bash

cat ~/.config/i3/config.template | envsubst $(list='';for var in $(env); do list=$list"\${$(echo $var | cut -d '=' -f1)}"; done;echo $list) > ~/.config/i3/config
