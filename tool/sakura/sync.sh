#!/usr/bin/env bash

set -e


################################################################################
### Head: config_profile_sync
##
sakura_config_profile_sync () {

	echo "cp './config/sakura/sakura.conf' '../../prototype/openbox/config/sakura/sakura.conf'"
	cp './config/sakura/sakura.conf' '../../prototype/openbox/config/sakura/sakura.conf'


	echo "cp './config/sakura/sakura.conf' '../../prototype/bspwm/config/sakura/sakura.conf'"
	cp './config/sakura/sakura.conf' '../../prototype/bspwm/config/sakura/sakura.conf'


	echo "cp './config/sakura/sakura.conf' '../../prototype/spectrwm/config/sakura/sakura.conf'"
	cp './config/sakura/sakura.conf' '../../prototype/spectrwm/config/sakura/sakura.conf'


	echo "cp './config/sakura/sakura.conf' '../../prototype/xfce/config/sakura/sakura.conf'"
	cp './config/sakura/sakura.conf' '../../prototype/xfce/config/sakura/sakura.conf'


	echo "cp './config/sakura/sakura.conf' '../../prototype/lxqt-with-openbox/config/sakura/sakura.conf'"
	cp './config/sakura/sakura.conf' '../../prototype/lxqt-with-openbox/config/sakura/sakura.conf'


	echo "cp './config/sakura/sakura.conf' '../../prototype/lxqt-with-xfwm4/config/sakura/sakura.conf'"
	cp './config/sakura/sakura.conf' '../../prototype/lxqt-with-xfwm4/config/sakura/sakura.conf'	


	echo "cp './config/sakura/sakura.conf' '../../prototype-xsession/xsession-wm-xfwm4/xsession-wm-xfwm4-with-tint2/config/sakura/sakura.conf'"
	cp './config/sakura/sakura.conf' '../../prototype-xsession/xsession-wm-xfwm4/xsession-wm-xfwm4-with-tint2/config/sakura/sakura.conf'


	echo "cp './config/sakura/sakura.conf' '../../prototype-xsession/xsession-wm-xfwm4/xsession-wm-xfwm4-with-cairo-dock/config/sakura/sakura.conf'"
	cp './config/sakura/sakura.conf' '../../prototype-xsession/xsession-wm-xfwm4/xsession-wm-xfwm4-with-cairo-dock/config/sakura/sakura.conf'	

}
##
### Tail: config_profile_sync
################################################################################


################################################################################
### Head: main
##
main_sync () {

	sakura_config_profile_sync

}
## start
main_sync

##
### Tail: main
################################################################################
