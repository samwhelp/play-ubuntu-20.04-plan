#!/usr/bin/env bash

set -e


################################################################################
### Head: config_profile_sync
##
gtk2_config_profile_sync () {

	echo "cp './config/gtk2/.gtkrc-2.0' '../../prototype/openbox/config/gtk2/.gtkrc-2.0'"
	cp './config/gtk2/.gtkrc-2.0' '../../prototype/openbox/config/gtk2/.gtkrc-2.0'


	echo "cp './config/gtk2/.gtkrc-2.0' '../../prototype/bspwm/config/gtk2/.gtkrc-2.0'"
	cp './config/gtk2/.gtkrc-2.0' '../../prototype/bspwm/config/gtk2/.gtkrc-2.0'


	echo "cp './config/gtk2/.gtkrc-2.0' '../../prototype/spectrwm/config/gtk2/.gtkrc-2.0'"
	cp './config/gtk2/.gtkrc-2.0' '../../prototype/spectrwm/config/gtk2/.gtkrc-2.0'


	echo "cp './config/gtk2/.gtkrc-2.0' '../../prototype/xfce/config/gtk2/.gtkrc-2.0'"
	cp './config/gtk2/.gtkrc-2.0' '../../prototype/xfce/config/gtk2/.gtkrc-2.0'


	echo "cp './config/gtk2/.gtkrc-2.0' '../../prototype/lxqt-with-openbox/config/gtk2/.gtkrc-2.0'"
	cp './config/gtk2/.gtkrc-2.0' '../../prototype/lxqt-with-openbox/config/gtk2/.gtkrc-2.0'


	echo "cp './config/gtk2/.gtkrc-2.0' '../../prototype/lxqt-with-xfwm4/config/gtk2/.gtkrc-2.0'"
	cp './config/gtk2/.gtkrc-2.0' '../../prototype/lxqt-with-xfwm4/config/gtk2/.gtkrc-2.0'	


	echo "cp './config/gtk2/.gtkrc-2.0' '../../prototype-xsession/xsession-wm-xfwm4/xsession-wm-xfwm4-with-tint2/config/gtk2/.gtkrc-2.0'"
	cp './config/gtk2/.gtkrc-2.0' '../../prototype-xsession/xsession-wm-xfwm4/xsession-wm-xfwm4-with-tint2/config/gtk2/.gtkrc-2.0'


	echo "cp './config/gtk2/.gtkrc-2.0' '../../prototype-xsession/xsession-wm-xfwm4/xsession-wm-xfwm4-with-cairo-dock/config/gtk2/.gtkrc-2.0'"
	cp './config/gtk2/.gtkrc-2.0' '../../prototype-xsession/xsession-wm-xfwm4/xsession-wm-xfwm4-with-cairo-dock/config/gtk2/.gtkrc-2.0'


	echo "cp './config/gtk2/.gtkrc-2.0' '../../prototype-xsession/xsession-wm-metacity/metacity/xsession-wm-metacity-with-tint2/config/gtk2/.gtkrc-2.0'"
	cp './config/gtk2/.gtkrc-2.0' '../../prototype-xsession/xsession-wm-metacity/metacity/xsession-wm-metacity-with-tint2/config/gtk2/.gtkrc-2.0'


	echo "cp './config/gtk2/.gtkrc-2.0' '../../prototype-xsession/xsession-wm-metacity/marco/xsession-wm-marco-with-tint2/config/gtk2/.gtkrc-2.0'"
	cp './config/gtk2/.gtkrc-2.0' '../../prototype-xsession/xsession-wm-metacity/marco/xsession-wm-marco-with-tint2/config/gtk2/.gtkrc-2.0'		

}
##
### Tail: config_profile_sync
################################################################################


################################################################################
### Head: main
##
main_sync () {

	gtk2_config_profile_sync

}
## start
main_sync

##
### Tail: main
################################################################################
