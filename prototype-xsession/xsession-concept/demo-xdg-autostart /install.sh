#!/usr/bin/env bash

## install
sudo install -m 644 "demo-session.desktop" "/usr/share/xsessions/demo-session.desktop"
sudo install -m 755 "demo-session.sh" "/usr/bin/demo-session.sh"

echo "Install:"

## check
ls -l "/usr/share/xsessions/demo-session.desktop"
ls -l "/usr/bin/demo-session.sh"



## create config dir
mkdir -p "$HOME/.config/demo-session"


## install compton.conf
install -m 644 "./compton.conf" "$HOME/.config/demo-session/compton.conf"


## install compton.conf
install -m 644 "./sxhkdrc" "$HOME/.config/demo-session/sxhkdrc"
