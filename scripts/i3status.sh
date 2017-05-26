#!/bin/bash

i3status --config ~/.i3status.conf | while :
do
    read line
    LG=$(xkb-switch)
    LG_COL=#FFFFFF
    MEM=$(free -h | grep Mem | awk '{print $7}')
    MEM_INT=$(echo $MEM | sed 's/[^0-9]//g')
    MEM_COL=#FFFFFF

    if  [ "$MEM_INT" -lt 10 ] ; then
	MEM_COL=#FF0000;
    fi

    dat="[{\"full_text\": \"$LG\", \"color\":\"$LG_COL\" }, {\"full_text\": \"$MEM\", \"color\":\"$MEM_COL\" },"
    echo "${line/[/$dat}" || exit 1
done
