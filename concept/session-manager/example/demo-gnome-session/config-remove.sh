#!/usr/bin/env bash

set -e

################################################################################
### Head: xephyr
##
xephyr_config_remove () {


	echo "rm -f $HOME/bin/xephyr-run-demo-gnome-session.sh"
	rm -f "$HOME/bin/xephyr-run-demo-gnome-session.sh"
}

##
### Tail: xephyr
################################################################################


################################################################################
### Head: demo_gnome_session
##
demo_gnome_session_config_remove () {


	echo "sudo rm -f /usr/share/gnome-session/sessions/demo-gnome-session.session"
	sudo rm -f '/usr/share/gnome-session/sessions/demo-gnome-session.session'


	demo_gnome_session_config_remove_require

}

demo_gnome_session_config_remove_require () {

	demo_gnome_session_config_remove_require_wm
	demo_gnome_session_config_remove_require_panel
	demo_gnome_session_config_remove_require_settings_daemon
	
	demo_gnome_session_config_remove_applet
}


demo_gnome_session_config_remove_require_wm () {

	echo "sudo rm -f /usr/bin/demo-wm.sh"
	sudo rm -f '/usr/bin/demo-wm.sh'

	echo "sudo rm -f /usr/share/applications/demo-wm.desktop"
	sudo rm -f '/usr/share/applications/demo-wm.desktop'

}

demo_gnome_session_config_remove_require_panel () {

	echo "sudo rm -f /usr/bin/demo-panel.sh"
	sudo rm -f '/usr/bin/demo-panel.sh'

	echo "sudo rm -f /usr/share/applications/demo-panel.desktop"
	sudo rm -f '/usr/share/applications/demo-panel.desktop'

}

demo_gnome_session_config_remove_require_settings_daemon () {

	echo "sudo rm -f /usr/bin/demo-settings-daemon.sh"
	sudo rm -f '/usr/bin/demo-settings-daemon.sh'

	echo "sudo rm -f /etc/xdg/autostart/demo-settings-daemon.desktop"
	sudo rm -f '/etc/xdg/autostart/demo-settings-daemon.desktop'

}


demo_gnome_session_config_remove_applet () {

	echo "sudo rm -f /usr/bin/demo-applet.sh"
	sudo rm -f '/usr/bin/demo-applet.sh'

	echo "sudo rm -f /etc/xdg/autostart/demo-applet.desktop"
	sudo rm -f '/etc/xdg/autostart/demo-applet.desktop'

}

##
### Tail: demo_gnome_session
################################################################################


################################################################################
### Head: xsession
##
xsession_config_remove () {


	echo "sudo rm -f /usr/share/xsessions/demo-gnome-session.desktop"
	sudo rm -f "/usr/share/xsessions/demo-gnome-session.desktop"

	echo "sudo rm -f /usr/bin/demo-gnome-session.sh"
	sudo rm -f "/usr/bin/demo-gnome-session.sh"



}
##
### Tail: xsession
################################################################################


################################################################################
### Head: main
##
main_config_remove () {

	xephyr_config_remove

	demo_gnome_session_config_remove

	xsession_config_remove

}
## start
main_config_remove

##
### Tail: main
################################################################################
