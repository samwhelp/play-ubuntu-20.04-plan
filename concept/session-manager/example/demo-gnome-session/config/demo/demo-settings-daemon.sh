#!/usr/bin/env bash


echo
echo '[demo-settings-daemon] $THE_SESSION_NAME:' $THE_SESSION_NAME
echo '[demo-settings-daemon] $THE_SESSION_NOTE:' $THE_SESSION_NOTE
echo


/usr/libexec/gsd-xsettings &
