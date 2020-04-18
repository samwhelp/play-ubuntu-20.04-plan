#!/usr/bin/env bash

set -e


################################################################################
### Head: config_profile_sync
##
compton_config_profile_sync () {

	echo "cp './config/compton/compton.conf' '../../prototype/openbox/config/compton/compton.conf'"
	cp './config/compton/compton.conf' '../../prototype/openbox/config/compton/compton.conf'


	echo "cp './config/compton/compton.conf' '../../prototype/bspwm/config/compton/compton.conf'"
	cp './config/compton/compton.conf' '../../prototype/bspwm/config/compton/compton.conf'


	echo "cp './config/compton/compton.conf' '../../prototype/spectrwm/config/compton/compton.conf'"
	cp './config/compton/compton.conf' '../../prototype/spectrwm/config/compton/compton.conf'


	#echo "cp './config/compton/compton.conf' '../../prototype/xfce/config/compton/compton.conf'"
	#cp './config/compton/compton.conf' '../../prototype/xfce/config/compton/compton.conf'


	echo "cp './config/compton/compton.conf' '../../prototype/lxqt-with-openbox/config/compton/compton.conf'"
	cp './config/compton/compton.conf' '../../prototype/lxqt-with-openbox/config/compton/compton.conf'


	#echo "cp './config/compton/compton.conf' '../../prototype/lxqt-with-xfwm4/config/compton/compton.conf'"
	#cp './config/compton/compton.conf' '../../prototype/lxqt-with-xfwm4/config/compton/compton.conf'	


	echo "cp './config/compton/compton.conf' '../../prototype-xsession/xsession-wm-xfwm4/xsession-wm-xfwm4-with-tint2/config/compton/compton.conf'"
	cp './config/compton/compton.conf' '../../prototype-xsession/xsession-wm-xfwm4/xsession-wm-xfwm4-with-tint2/config/compton/compton.conf'


	echo "cp './config/compton/compton.conf' '../../prototype-xsession/xsession-wm-xfwm4/xsession-wm-xfwm4-with-cairo-dock/config/compton/compton.conf'"
	cp './config/compton/compton.conf' '../../prototype-xsession/xsession-wm-xfwm4/xsession-wm-xfwm4-with-cairo-dock/config/compton/compton.conf'	


	echo "cp './config/compton/compton.conf' '../../prototype-xsession/xsession-wm-metacity/metacity/xsession-wm-metacity-with-tint2/config/compton/compton.conf'"
	cp './config/compton/compton.conf' '../../prototype-xsession/xsession-wm-metacity/metacity/xsession-wm-metacity-with-tint2/config/compton/compton.conf'


	echo "cp './config/compton/compton.conf' '../../prototype-xsession/xsession-wm-metacity/marco/xsession-wm-marco-with-tint2/config/compton/compton.conf'"
	cp './config/compton/compton.conf' '../../prototype-xsession/xsession-wm-metacity/marco/xsession-wm-marco-with-tint2/config/compton/compton.conf'



 
}
##
### Tail: config_profile_sync
################################################################################


################################################################################
### Head: main
##
main_sync () {

	compton_config_profile_sync

}
## start
main_sync

##
### Tail: main
################################################################################
