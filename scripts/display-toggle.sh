#!/bin/bash
intern=LVDS1
extern=DP1

if xrandr | grep "$extern connected"; then
  if xrandr --listmonitors | grep "$extern" > /dev/null; then
    xrandr --output "$extern" --off --output "$intern" --auto
  else
    xrandr --output "$intern" --off --output "$extern" --auto
  fi
fi
