#!/usr/bin/env bash

## install
sudo install -m 644 "demo-session.desktop" "/usr/share/xsessions/demo-session.desktop"
sudo install -m 755 "demo-session.sh" "/usr/bin/demo-session.sh"

echo "Install:"

## check
ls -l "/usr/share/xsessions/demo-session.desktop"
ls -l "/usr/bin/demo-session.sh"



## install compton.conf

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
