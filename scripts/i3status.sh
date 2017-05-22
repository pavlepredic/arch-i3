#!/bin/bash

i3status --config ~/.i3status.conf | while :
do
    read line
    LG=$(xkb-switch)
    dat="[{ \"full_text\": \"$LG\", \"color\":\"#FFFFFF\" },"
    echo "${line/[/$dat}" || exit 1
done
