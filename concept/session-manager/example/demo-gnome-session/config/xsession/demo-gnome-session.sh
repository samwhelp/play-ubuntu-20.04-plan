#!/usr/bin/env bash

echo
echo '$THE_SESSION_NAME:' $THE_SESSION_NAME
echo '$THE_SESSION_NOTE:' $THE_SESSION_NOTE
echo

echo
env | grep XDG
echo


exec env THE_SESSION_NAME=demo THE_SESSION_NOTE=test /usr/bin/gnome-session --session=demo-gnome-session

##exec xterm -fa Monospace -fs 16
