#!/usr/bin/env bash

set -e


################################################################################
### Head: config_profile_sync
##
fcitx_config_profile_sync () {

	echo "cp './config/fcitx/profile' '../../prototype/openbox/config/fcitx/profile'"
	cp './config/fcitx/profile' '../../prototype/openbox/config/fcitx/profile'


	echo "cp './config/fcitx/profile' '../../prototype/bspwm/config/fcitx/profile'"
	cp './config/fcitx/profile' '../../prototype/bspwm/config/fcitx/profile'


	echo "cp './config/fcitx/profile' '../../prototype/spectrwm/config/fcitx/profile'"
	cp './config/fcitx/profile' '../../prototype/spectrwm/config/fcitx/profile'


	echo "cp './config/fcitx/profile' '../../prototype/xfce/config/fcitx/profile'"
	cp './config/fcitx/profile' '../../prototype/xfce/config/fcitx/profile'


	echo "cp './config/fcitx/profile' '../../prototype/lxqt-with-openbox/config/fcitx/profile'"
	cp './config/fcitx/profile' '../../prototype/lxqt-with-openbox/config/fcitx/profile'


	echo "cp './config/fcitx/profile' '../../prototype/lxqt-with-xfwm4/config/fcitx/profile'"
	cp './config/fcitx/profile' '../../prototype/lxqt-with-xfwm4/config/fcitx/profile'	


	echo "cp './config/fcitx/profile' '../../prototype-xsession/xsession-wm-xfwm4/xsession-wm-xfwm4-with-tint2/config/fcitx/profile'"
	cp './config/fcitx/profile' '../../prototype-xsession/xsession-wm-xfwm4/xsession-wm-xfwm4-with-tint2/config/fcitx/profile'


	echo "cp './config/fcitx/profile' '../../prototype-xsession/xsession-wm-xfwm4/xsession-wm-xfwm4-with-cairo-dock/config/fcitx/profile'"
	cp './config/fcitx/profile' '../../prototype-xsession/xsession-wm-xfwm4/xsession-wm-xfwm4-with-cairo-dock/config/fcitx/profile'	

}
##
### Tail: config_profile_sync
################################################################################


################################################################################
### Head: main
##
main_sync () {

	fcitx_config_profile_sync

}
## start
main_sync

##
### Tail: main
################################################################################
