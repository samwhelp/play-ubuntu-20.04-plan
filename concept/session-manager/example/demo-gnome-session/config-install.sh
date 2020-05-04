#!/usr/bin/env bash

set -e

################################################################################
### Head: xephyr
##
xephyr_config_install () {

	echo "mkdir -p $HOME/bin"
	mkdir -p "$HOME/bin"

	echo "install -m 755 ./config/xephyr/xephyr-run-demo-gnome-session.sh $HOME/bin/xephyr-run-demo-gnome-session.sh"
	install -m 755 './config/xephyr/xephyr-run-demo-gnome-session.sh' "$HOME/bin/xephyr-run-demo-gnome-session.sh"
}

##
### Tail: xephyr
################################################################################


################################################################################
### Head: demo_gnome_session
##
demo_gnome_session_config_install () {


	echo "sudo install -m 644 ./config/gnome-session/demo-gnome-session.session /usr/share/gnome-session/sessions/demo-gnome-session.session"
	sudo install -m 644 './config/gnome-session/demo-gnome-session.session' '/usr/share/gnome-session/sessions/demo-gnome-session.session'


	demo_gnome_session_config_install_require

}

demo_gnome_session_config_install_require () {

	demo_gnome_session_config_install_require_wm
	demo_gnome_session_config_install_require_panel
	demo_gnome_session_config_install_require_settings_daemon
	
	demo_gnome_session_config_install_applet
}


demo_gnome_session_config_install_require_wm () {

	echo "sudo install -m 755 ./config/demo/demo-wm.sh /usr/bin/demo-wm.sh"
	sudo install -m 755 './config/demo/demo-wm.sh' '/usr/bin/demo-wm.sh'

	echo "sudo install -m 644 ./config/demo/demo-wm.desktop /usr/share/applications/demo-wm.desktop"
	sudo install -m 644 './config/demo/demo-wm.desktop' '/usr/share/applications/demo-wm.desktop'

}

demo_gnome_session_config_install_require_panel () {

	echo "sudo install -m 755 ./config/demo/demo-panel.sh /usr/bin/demo-panel.sh"
	sudo install -m 755 './config/demo/demo-panel.sh' '/usr/bin/demo-panel.sh'

	echo "sudo install -m 644 ./config/demo/demo-panel.desktop /usr/share/applications/demo-panel.desktop"
	sudo install -m 644 './config/demo/demo-panel.desktop' '/usr/share/applications/demo-panel.desktop'

}

demo_gnome_session_config_install_require_settings_daemon () {

	echo "sudo install -m 755 ./config/demo/demo-settings-daemon.sh /usr/bin/demo-settings-daemon.sh"
	sudo install -m 755 './config/demo/demo-settings-daemon.sh' '/usr/bin/demo-settings-daemon.sh'

	echo "sudo install -m 644 ./config/demo/demo-settings-daemon.desktop /etc/xdg/autostart/demo-settings-daemon.desktop"
	sudo install -m 644 './config/demo/demo-settings-daemon.desktop' '/etc/xdg/autostart/demo-settings-daemon.desktop'

}


demo_gnome_session_config_install_applet () {

	echo "sudo install -m 755 ./config/demo/demo-applet.sh /usr/bin/demo-applet.sh"
	sudo install -m 755 './config/demo/demo-applet.sh' '/usr/bin/demo-applet.sh'

	echo "sudo install -m 644 ./config/demo/demo-applet.desktop /etc/xdg/autostart/demo-applet.desktop"
	sudo install -m 644 './config/demo/demo-applet.desktop' '/etc/xdg/autostart/demo-applet.desktop'

}

##
### Tail: demo_gnome_session
################################################################################


################################################################################
### Head: xsession
##
xsession_config_install () {

	## install
	sudo install -m 644 "./config/xsession/demo-gnome-session.desktop" "/usr/share/xsessions/demo-gnome-session.desktop"
	sudo install -m 755 "./config/xsession/demo-gnome-session.sh" "/usr/bin/demo-gnome-session.sh"

	echo "Install:"

	## check
	ls -l "/usr/share/xsessions/demo-gnome-session.desktop"
	ls -l "/usr/bin/demo-gnome-session.sh"

}
##
### Tail: xsession
################################################################################


################################################################################
### Head: main
##
main_config_install () {

	xephyr_config_install

	demo_gnome_session_config_install

	xsession_config_install

}
## start
main_config_install

##
### Tail: main
################################################################################
