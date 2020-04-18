#!/usr/bin/env bash

set -e


################################################################################
### Head: config_profile_sync
##
gtk3_config_profile_sync () {

	echo "cp './config/gtk3/settings.ini' '../../prototype/openbox/config/gtk3/settings.ini'"
	cp './config/gtk3/settings.ini' '../../prototype/openbox/config/gtk3/settings.ini'


	echo "cp './config/gtk3/settings.ini' '../../prototype/bspwm/config/gtk3/settings.ini'"
	cp './config/gtk3/settings.ini' '../../prototype/bspwm/config/gtk3/settings.ini'


	echo "cp './config/gtk3/settings.ini' '../../prototype/spectrwm/config/gtk3/settings.ini'"
	cp './config/gtk3/settings.ini' '../../prototype/spectrwm/config/gtk3/settings.ini'


	echo "cp './config/gtk3/settings.ini' '../../prototype/xfce/config/gtk3/settings.ini'"
	cp './config/gtk3/settings.ini' '../../prototype/xfce/config/gtk3/settings.ini'


	echo "cp './config/gtk3/settings.ini' '../../prototype/lxqt-with-openbox/config/gtk3/settings.ini'"
	cp './config/gtk3/settings.ini' '../../prototype/lxqt-with-openbox/config/gtk3/settings.ini'


	echo "cp './config/gtk3/settings.ini' '../../prototype/lxqt-with-xfwm4/config/gtk3/settings.ini'"
	cp './config/gtk3/settings.ini' '../../prototype/lxqt-with-xfwm4/config/gtk3/settings.ini'	


	echo "cp './config/gtk3/settings.ini' '../../prototype-xsession/xsession-wm-xfwm4/xsession-wm-xfwm4-with-tint2/config/gtk3/settings.ini'"
	cp './config/gtk3/settings.ini' '../../prototype-xsession/xsession-wm-xfwm4/xsession-wm-xfwm4-with-tint2/config/gtk3/settings.ini'


	echo "cp './config/gtk3/settings.ini' '../../prototype-xsession/xsession-wm-xfwm4/xsession-wm-xfwm4-with-cairo-dock/config/gtk3/settings.ini'"
	cp './config/gtk3/settings.ini' '../../prototype-xsession/xsession-wm-xfwm4/xsession-wm-xfwm4-with-cairo-dock/config/gtk3/settings.ini'	


	echo "cp './config/gtk3/settings.ini' '../../prototype-xsession/xsession-wm-metacity/metacity/xsession-wm-metacity-with-tint2/config/gtk3/settings.ini'"
	cp './config/gtk3/settings.ini' '../../prototype-xsession/xsession-wm-metacity/metacity/xsession-wm-metacity-with-tint2/config/gtk3/settings.ini'


	echo "cp './config/gtk3/settings.ini' '../../prototype-xsession/xsession-wm-metacity/marco/xsession-wm-marco-with-tint2/config/gtk3/settings.ini'"
	cp './config/gtk3/settings.ini' '../../prototype-xsession/xsession-wm-metacity/marco/xsession-wm-marco-with-tint2/config/gtk3/settings.ini'

}
##
### Tail: config_profile_sync
################################################################################


################################################################################
### Head: main
##
main_sync () {

	gtk3_config_profile_sync

}
## start
main_sync

##
### Tail: main
################################################################################
