#!/usr/bin/env bash

echo
echo '[demo-wm] $THE_SESSION_NAME:' $THE_SESSION_NAME
echo '[demo-wm] $THE_SESSION_NOTE:' $THE_SESSION_NOTE
echo


feh --bg-scale '/usr/share/backgrounds/Frozen_sunset_on_the_lake_by_Manuel_Arslanyan.jpg' &

xterm -fa Monospace -fs 16 &
#exec xterm -fa Monospace -fs 16

exec xfwm4
