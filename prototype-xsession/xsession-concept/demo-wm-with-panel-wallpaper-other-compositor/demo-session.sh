#!/bin/sh

compton &

feh --bg-scale '/usr/share/backgrounds/Frozen_sunset_on_the_lake_by_Manuel_Arslanyan.jpg' &

tint2 &

xterm -fa Monospace -fs 16 &

exec xfwm4 --compositor=off



## or disable compositor by xfconf-query
## $ xfconf-query -c xfwm4 -p /general/use_compositing -s false

## $ xfconf-query -c xfwm4 -l -v | grep com
## /general/use_compositing                 false

## $ xfconf-query -c xfwm4 -p /general/use_compositing -l -v
## /general/use_compositing  false

## $ xfconf-query -c xfwm4 -p /general/use_compositing -s true

