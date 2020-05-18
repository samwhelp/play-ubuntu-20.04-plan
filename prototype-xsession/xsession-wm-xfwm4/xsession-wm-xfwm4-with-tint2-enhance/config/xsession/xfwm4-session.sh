#!/bin/sh


################################################################################
### Head: Manual
##

#

##
### Tail: Manual
################################################################################


################################################################################
### Head: Start
##

xf-autostart &

##
### Tail: Start
################################################################################


################################################################################
### Head: Window Manager
##

# $ man xfwm4

# $ xfwm4 -h
# Usage:
#   xfwm4 [OPTION…] [ARGUMENTS...]
#
# Help Options:
#   -h, --help                   Show help options
#   --help-all                   Show all help options
#   --help-gtk                   Show GTK+ Options
#   --help-sm-client             Show session management options
#
# Application Options:
#   --daemon                     Fork to the background
#   --compositor=on|off|auto     Set the compositor mode
#   --replace                    Replace the existing window manager
#   -V, --version                Print version information and exit
#   --display=DISPLAY            X display to use



## xfwm4
XFWM4_OPT_REPLACE="--replace"
#XFWM4_OPT_COMPOSITOR="--compositor=on"
XFWM4_OPT_COMPOSITOR="--compositor=off"

exec xfwm4 "$XFWM4_OPT_REPLACE" "$XFWM4_OPT_COMPOSITOR"

##
### Tail: Window Manager
################################################################################
