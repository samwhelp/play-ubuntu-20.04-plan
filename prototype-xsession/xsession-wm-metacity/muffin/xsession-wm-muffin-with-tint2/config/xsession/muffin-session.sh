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
##pcmanfm-qt --desktop --profile=muffin-session &

## Use [xfdesktop] for desktop
#xfdesktop &

## Just Wallpaper

#THE_WALLPAPER_FILE_PATH="/usr/share/backgrounds/Manhattan_Sunset_by_Giacomo_Ferroni.jpg"
#THE_WALLPAPER_FILE_PATH="/usr/share/backgrounds/Spices_in_Athens_by_Makis_Chourdakis.jpg"
#THE_WALLPAPER_FILE_PATH="/usr/share/backgrounds/Frozen_sunset_on_the_lake_by_Manuel_Arslanyan.jpg"
##feh --bg-scale "$THE_WALLPAPER_FILE_PATH" &

## move to ~/bin/wallpaper.sh
wallpaper.sh &


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
tint2 -c "$HOME/.config/muffin-session/tint2/tint2rc" &

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
#compton --config ~/.config/muffin-session/compton/compton.conf &

##
### Tail: Compton
################################################################################


################################################################################
### Head: Keybind
##

## global key shortcut

## lxqt-globalkeysd
#lxqt-globalkeysd &
#lxqt-globalkeysd --config-file="$HOME/.config/muffin-session/lxqt/globalkeyshortcuts.conf" &

## sxhkd
sxhkd -c "$HOME/.config/muffin-session/sxhkd/sxhkdrc" &

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

/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 &


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
### Head: Window Manager
##

# $ man muffin

# $ muffin -h
#Usage:
#  muffin [OPTION…]
#
#Help Options:
#  -h, --help                             Show help options
#  --help-all                             Show all help options
#  --help-clutter                         Show Clutter Options
#  --help-cogl                            Show Cogl options
#
#Application Options:
#  --sm-disable                           Disable connection to session manager
#  --replace                              Replace the running window manager
#  --sm-client-id=ID                      Specify session management ID
#  -d, --display=DISPLAY                  X Display to use
#  --sm-save-file=FILE                    Initialize session from savefile
#  --sync                                 Make X calls synchronous
#  --version                              Print version
#  --muffin-plugin=PLUGINS                Muffin plugin to use
#  --clutter-display=DISPLAY              X display to use
#  --screen=SCREEN                        X screen to use




## muffin
MUFFIN_OPT_REPLACE="--replace"


exec muffin "$MUFFIN_OPT_REPLACE"

##
### Tail: Window Manager
################################################################################
