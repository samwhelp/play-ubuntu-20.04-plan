#!/bin/sh

sxhkd -c "$HOME/.config/demo-session/sxhkdrc" &

compton --config "$HOME/.config/demo-session/compton.conf" &

feh --bg-scale '/usr/share/backgrounds/Frozen_sunset_on_the_lake_by_Manuel_Arslanyan.jpg' &

tint2 &

xdg-autostart &

mate-volume-control-status-icon &

xterm -fa Monospace -fs 16 &

exec xfwm4 --compositor=off

