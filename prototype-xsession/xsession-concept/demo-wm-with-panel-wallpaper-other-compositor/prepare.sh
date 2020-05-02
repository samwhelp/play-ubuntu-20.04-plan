#!/usr/bin/env bash

sudo apt-get install xserver-xephyr xterm xfwm4 tint2 feh ubuntu-wallpapers-eoan compton


## $ dpkg -L compton | grep conf
## /usr/share/doc/compton/examples/compton.sample.conf


## install example compton.conf
# cp "$(dpkg -L compton | grep conf)" "$HOME/.config/compton.conf"

## or install custom compton.conf
cp "./compton.conf" "$HOME/.config/compton.conf"

## run `compton &`



## or install custom compton.conf to another path
#mkdir -p "$HOME/.config/demo-session"
#cp "./compton.conf" "$HOME/.config/demo-session/compton.conf"

## run `compton --config "$HOME/.config/demo-session/compton.conf"
