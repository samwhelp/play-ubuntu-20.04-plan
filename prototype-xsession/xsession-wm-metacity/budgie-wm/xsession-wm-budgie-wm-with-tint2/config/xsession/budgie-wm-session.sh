#!/bin/sh


################################################################################
### Head: Manual
##

#

##
### Tail: Manual
################################################################################


################################################################################
### Head: Xresources
##


#test -f "$HOME/.Xresources" && xrdb -load "$HOME/.Xresources"
#test -f "$HOME/.Xresources" && xrdb -merge "$HOME/.Xresources"
#/usr/local/bin/xresources-load.sh

xresources-load.sh


##
### Tail: Xresources
################################################################################


################################################################################
### Head: Network
##

## network manager applet
#sleep 1 &&
nm-applet &

##
### Tail: Network
################################################################################


################################################################################
### Head: Volume
##


## volumeicon (Package: volumeicon-alsa)
#volumeicon &


## mate-volume-control-status-icon (Package: mate-media)
mate-volume-control-status-icon &

##
### Tail: Volume
################################################################################


################################################################################
### Head: Desktop
##

## Use [pcmanfm-qt] for desktop
## /etc/xdg/autostart/lxqt-desktop.desktop
## grep '^Exec=' /etc/xdg/autostart/lxqt-desktop.desktop
##pcmanfm-qt --desktop --profile=budgie-wm-session &

## Use [xfdesktop] for desktop
#xfdesktop &

## Just Wallpaper

#THE_WALLPAPER_FILE_PATH="/usr/share/backgrounds/Manhattan_Sunset_by_Giacomo_Ferroni.jpg"
#THE_WALLPAPER_FILE_PATH="/usr/share/backgrounds/Spices_in_Athens_by_Makis_Chourdakis.jpg"
#THE_WALLPAPER_FILE_PATH="/usr/share/backgrounds/Frozen_sunset_on_the_lake_by_Manuel_Arslanyan.jpg"
##feh --bg-scale "$THE_WALLPAPER_FILE_PATH" &

## move to ~/bin/wallpaper.sh
#wallpaper.sh &


##
### Tail: Desktop
################################################################################


################################################################################
### Head: Panel
##

## stalonetray
#stalonetray &

## Panel

## tint2
#tint2 &
#tint2 -c "$HOME/.config/tint2/tint2rc" &
tint2 -c "$HOME/.config/budgie-wm-session/tint2/tint2rc" &

## xfce4-panel
#xfce4-panel &

## fbpanel
#fbpanel &

## lxpanel
#lxpanel &

## lxqt-panel
#lxqt-panel &

## cairo-dock
#cairo-dock &
#cairo-dock -o &
#cairo-dock -c &

##
### Tail: Panel
################################################################################


################################################################################
### Head: Compton
##


## compton
#compton &
#compton --config ~/.config/compton/compton.conf &
#compton --config ~/.config/budgie-wm-session/compton/compton.conf &

##
### Tail: Compton
################################################################################


################################################################################
### Head: Keybind
##

## global key shortcut

## lxqt-globalkeysd
#lxqt-globalkeysd &
#lxqt-globalkeysd --config-file="$HOME/.config/budgie-wm-session/lxqt/globalkeyshortcuts.conf" &

## sxhkd
sxhkd -c "$HOME/.config/budgie-wm-session/sxhkd/sxhkdrc" &

##
### Tail: Keybind
################################################################################


################################################################################
### Head: Policykit Agent
##

## [policykit-1-gnome]
## $ dpkg -L policykit-1-gnome | grep desktop
## /etc/xdg/autostart/polkit-gnome-authentication-agent-1.desktop
## $ grep '^Exec=' $(dpkg -L policykit-1-gnome | grep desktop)
## Exec=/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1
## $ grep '^Exec=' $(dpkg -L policykit-1-gnome | grep desktop) | cut -d '=' -f 2
## /usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1

##/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 &


## [lxqt-policykit]
## $ dpkg -L lxqt-policykit | grep desktop
## /etc/xdg/autostart/lxqt-policykit-agent.desktop
## $ grep '^Exec=' $(dpkg -L lxqt-policykit | grep desktop)
## Exec=lxqt-policykit-agent
## $ grep '^Exec=' $(dpkg -L lxqt-policykit | grep desktop) | cut -d '=' -f 2
## lxqt-policykit-agent

#lxqt-policykit-agent &


##
### Tail: Policykit Agent
################################################################################


################################################################################
### Head: Terminal
##

## sakura
#sakura -m &

##
### Tail: Terminal
################################################################################


################################################################################
### Head: Budgie
##


#budgie-panel &
budgie-daemon &
budgie-polkit-dialog &

##
### Tail: Budgie
################################################################################

################################################################################
### Head: Window Manager
##

# $ man budgie-wm

# $ budgie-wm -h
#Usage:
#  budgie-wm [OPTION…]

#Help Options:
#  -h, --help                Show help options

#Application Options:
#  --sm-disable              Disable connection to session manager
#  -r, --replace             Replace the running window manager
#  --sm-client-id=ID         Specify session management ID
#  -d, --display=DISPLAY     X Display to use
#  --sm-save-file=FILE       Initialize session from savefile
#  --sync                    Make X calls synchronous
#  --wayland                 Run as a wayland compositor
#  --nested                  Run as a nested compositor
#  --no-x11                  Run wayland compositor without starting Xwayland
#  --display-server          Run as a full display server, rather than nested
#  --x11                     Run with X11 backend



## budgie-wm
BUDGIE_WM_OPT_REPLACE="--replace"


exec budgie-wm "$BUDGIE_WM_OPT_REPLACE"

##
### Tail: Window Manager
################################################################################
