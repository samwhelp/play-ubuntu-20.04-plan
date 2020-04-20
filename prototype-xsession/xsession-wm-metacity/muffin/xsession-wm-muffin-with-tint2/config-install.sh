#!/usr/bin/env bash

set -e


################################################################################
### Head: xsession
##
xsession_config_install () {

	echo "Install Xsession:"

	## install
	sudo install -m 644 "./config/xsession/muffin-session.desktop" "/usr/share/xsessions/muffin-session.desktop"
	sudo install -m 755 "./config/xsession/muffin-session.sh" "/usr/bin/muffin-session.sh"

	## check
	ls -l "/usr/share/xsessions/muffin-session.desktop"
	ls -l "/usr/bin/muffin-session.sh"

}
##
### Tail: xsession
################################################################################


################################################################################
### Head: muffin
##
muffin_config_install () {

	muffin_put_toggledesktop_desktop_entry
	muffin_put_quit_desktop_entry
	
	muffin_config_install_setting

}

muffin_config_install_setting () {


	muffin_set_theme

	muffin_set_keybindings_show_desktop

	muffin_set_keybindings_switch_windows

	muffin_set_keybindings_win_close

	muffin_set_keybindings_toggle_fullscreen

	muffin_set_keybindings_toggle_maximized

	muffin_set_keybindings_minimize

	muffin_set_keybindings_begin_move

	muffin_set_keybindings_begin_resize

	muffin_set_keybindings_toggle_above

	muffin_set_keybindings_toggle_shaded

	muffin_set_keybindings_raise_or_lower

	muffin_set_keybindings_toggle_tiled

	muffin_set_edge_tiling

	muffin_set_keybindings_about_workspace
	
	muffin_set_titlebar_action

}

muffin_put_toggledesktop_desktop_entry () {

	mkdir -p "$HOME/.local/share/applications"
	echo "mkdir -p $HOME/.local/share/applications"

	cp "./config/muffin/util/muffin-toggle-show-desktop.desktop" "$HOME/.local/share/applications/muffin-toggle-show-desktop.desktop"
	echo "cp ./config/muffin/util/muffin-toggle-show-desktop.desktop $HOME/.local/share/applications/muffin-toggle-show-desktop.desktop"

}

muffin_put_quit_desktop_entry () {

	#mkdir -p "$HOME/.local/share/applications"
	#echo "mkdir -p $HOME/.local/share/applications"

	cp "./config/muffin/util/muffin-quit.desktop" "$HOME/.local/share/applications/muffin-quit.desktop"
	echo "cp ./config/muffin/util/muffin-quit.desktop $HOME/.local/share/applications/muffin-quit.desktop"

}


muffin_set_theme () {

	
	#gsettings set org.cinnamon.desktop.wm.preferences theme-backup 'Adwaita'
	#gsettings set org.cinnamon.desktop.wm.preferences theme 'Default'
	

	## Theme Type
	## $ gsettings list-recursively | grep 'org.gnome.metacity.theme'
	# org.gnome.metacity.theme name ''
	# org.gnome.metacity.theme type 'gtk'
	##
	gsettings set org.gnome.metacity.theme type 'gtk'

	## Theme
	## $ gsettings list-recursively | grep 'theme' | grep 'org.gnome.desktop'
	gsettings set org.cinnamon.desktop.wm.preferences theme 'NumixBlue'
	gsettings set org.gnome.desktop.interface gtk-theme 'NumixBlue'
	gsettings set org.gnome.desktop.interface icon-theme 'Numix'
	gsettings set org.gnome.desktop.interface cursor-theme 'breeze_cursors'


	## $ gsettings list-recursively | grep 'theme' | grep 'org.gnome.desktop'
	## $ gsettings list-recursively | grep 'org.gnome.desktop' | grep 'theme'
	# org.cinnamon.desktop.wm.preferences theme 'NumixBlue'
	# org.gnome.desktop.interface cursor-theme 'breeze_cursors'
	# org.gnome.desktop.interface icon-theme 'Numix'
	# org.gnome.desktop.interface gtk-theme 'NumixBlue'
	# org.gnome.desktop.interface gtk-key-theme 'Default'
	# org.gnome.desktop.sound theme-name 'ubuntu'
	##

}


muffin_set_keybindings_show_desktop () {

	gsettings set org.cinnamon.desktop.keybindings.wm show-desktop "['<Control><Alt>d', '<Control><Super>d', '<Super>d']"

}

muffin_set_keybindings_switch_windows () {

	gsettings set org.cinnamon.desktop.keybindings.wm switch-windows-backward "['<Super>a']"
	gsettings set org.cinnamon.desktop.keybindings.wm switch-windows "['<Super>s']"

}

muffin_set_keybindings_win_close () {

	gsettings set org.cinnamon.desktop.keybindings.wm close "['<Alt>F4', '<Shift><Alt>q', '<Super>q']"

}

muffin_set_keybindings_toggle_fullscreen () {

	## Fullscreen
	gsettings set org.cinnamon.desktop.keybindings.wm toggle-fullscreen "['F11', '<Super>o', '<Super>f']"

}

muffin_set_keybindings_toggle_maximized () {

	gsettings set org.cinnamon.desktop.keybindings.wm toggle-maximized "['<Alt>F10', '<Super>u', '<Super>w']"

}

muffin_set_keybindings_minimize () {

	#gsettings set org.cinnamon.desktop.keybindings.wm minimize "['<Super>h']"
	gsettings set org.cinnamon.desktop.keybindings.wm minimize "['<Super>i', '<Super>x']"

}

muffin_set_keybindings_begin_move () {
	gsettings set org.cinnamon.desktop.keybindings.wm begin-move "['<Alt>F7', '<Super>e']"
}

muffin_set_keybindings_begin_resize () {
	gsettings set org.cinnamon.desktop.keybindings.wm begin-resize "['<Alt>F8', '<Super>r']"
}

muffin_set_keybindings_toggle_above () {
	#gsettings set org.cinnamon.desktop.keybindings.wm always-on-top "['<Super>t']"
	gsettings set org.cinnamon.desktop.keybindings.wm toggle-above "['<Super>t']"
}

muffin_set_keybindings_toggle_shaded () {
	gsettings set org.cinnamon.desktop.keybindings.wm toggle-shaded "['<Super>y']"
}

muffin_set_keybindings_raise_or_lower () {
	gsettings set org.cinnamon.desktop.keybindings.wm raise-or-lower "['<Super>m']"
}

muffin_set_keybindings_toggle_tiled () {

	#gsettings set org.cinnamon.desktop.keybindings.wm push-snap-down "['<Control><Super>Down']"
	#gsettings set org.cinnamon.desktop.keybindings.wm push-snap-left "['<Control><Super>Left']"
	#gsettings set org.cinnamon.desktop.keybindings.wm push-snap-right "['<Control><Super>Right']"
	#gsettings set org.cinnamon.desktop.keybindings.wm push-snap-up "['<Control><Super>Up']"
	#gsettings set org.cinnamon.desktop.keybindings.wm push-tile-down "['<Super>Down']"
	#gsettings set org.cinnamon.desktop.keybindings.wm push-tile-left "['<Super>Left']"
	#gsettings set org.cinnamon.desktop.keybindings.wm push-tile-right "['<Super>Right']"
	#gsettings set org.cinnamon.desktop.keybindings.wm push-tile-up "['<Super>Up']"

	gsettings set org.cinnamon.desktop.keybindings.wm push-tile-up "['<Super>Up', '<Super><Control>k']"
	gsettings set org.cinnamon.desktop.keybindings.wm push-tile-down "['<Super>Down', '<Super><Control>j']"
	gsettings set org.cinnamon.desktop.keybindings.wm push-tile-left "['<Super>Left', '<Super><Control>h']"
	gsettings set org.cinnamon.desktop.keybindings.wm push-tile-right "['<Super>Right', '<Super><Control>l']"




	#gsettings set org.cinnamon.desktop.keybindings.wm move-to-center "[]"
	
	#gsettings set org.cinnamon.desktop.keybindings.wm move-to-corner-nw "['<Super><Shift>k']"
	#gsettings set org.cinnamon.desktop.keybindings.wm move-to-corner-ne "['<Super><Shift>j']"
	#gsettings set org.cinnamon.desktop.keybindings.wm move-to-corner-sw "['<Super><Shift>h']"
	#gsettings set org.cinnamon.desktop.keybindings.wm move-to-corner-se "['<Super><Shift>l']"

	#gsettings set org.cinnamon.desktop.keybindings.wm move-to-side-n "['<Super><Control>k']"
	#gsettings set org.cinnamon.desktop.keybindings.wm move-to-side-s "['<Super><Control>j']"
	#gsettings set org.cinnamon.desktop.keybindings.wm move-to-side-w "['<Super><Control>h']"
	#gsettings set org.cinnamon.desktop.keybindings.wm move-to-side-e "['<Super><Control>l']"



	gsettings set org.cinnamon.desktop.keybindings.wm move-to-center "['<Super><Control>i']"
	
	gsettings set org.cinnamon.desktop.keybindings.wm move-to-corner-nw "[]"
	gsettings set org.cinnamon.desktop.keybindings.wm move-to-corner-ne "[]"
	gsettings set org.cinnamon.desktop.keybindings.wm move-to-corner-sw "[]"
	gsettings set org.cinnamon.desktop.keybindings.wm move-to-corner-se "[]"

	gsettings set org.cinnamon.desktop.keybindings.wm move-to-side-n "[]"
	gsettings set org.cinnamon.desktop.keybindings.wm move-to-side-s "[]"
	gsettings set org.cinnamon.desktop.keybindings.wm move-to-side-w "[]"
	gsettings set org.cinnamon.desktop.keybindings.wm move-to-side-e "[]"
	


}


muffin_set_keybindings_toggle_tiled_old () {

	#gsettings set org.cinnamon.desktop.keybindings.wm push-snap-down "['<Control><Super>Down']"
	#gsettings set org.cinnamon.desktop.keybindings.wm push-snap-left "['<Control><Super>Left']"
	#gsettings set org.cinnamon.desktop.keybindings.wm push-snap-right "['<Control><Super>Right']"
	#gsettings set org.cinnamon.desktop.keybindings.wm push-snap-up "['<Control><Super>Up']"
	#gsettings set org.cinnamon.desktop.keybindings.wm push-tile-down "['<Super>Down']"
	#gsettings set org.cinnamon.desktop.keybindings.wm push-tile-left "['<Super>Left']"
	#gsettings set org.cinnamon.desktop.keybindings.wm push-tile-right "['<Super>Right']"
	#gsettings set org.cinnamon.desktop.keybindings.wm push-tile-up "['<Super>Up']"



	#gsettings set org.cinnamon.desktop.keybindings.wm move-to-center "[]"
	gsettings set org.cinnamon.desktop.keybindings.wm move-to-center "['<Super><Control>i']"

	
	gsettings set org.cinnamon.desktop.keybindings.wm move-to-corner-nw "['<Super><Shift>k']"
	gsettings set org.cinnamon.desktop.keybindings.wm move-to-corner-ne "['<Super><Shift>j']"
	gsettings set org.cinnamon.desktop.keybindings.wm move-to-corner-sw "['<Super><Shift>h']"
	gsettings set org.cinnamon.desktop.keybindings.wm move-to-corner-se "['<Super><Shift>l']"

	gsettings set org.cinnamon.desktop.keybindings.wm move-to-side-n "['<Super><Control>k']"
	gsettings set org.cinnamon.desktop.keybindings.wm move-to-side-s "['<Super><Control>j']"
	gsettings set org.cinnamon.desktop.keybindings.wm move-to-side-w "['<Super><Control>h']"
	gsettings set org.cinnamon.desktop.keybindings.wm move-to-side-e "['<Super><Control>l']"


}

muffin_set_edge_tiling () {

	gsettings set org.gnome.metacity edge-tiling true

}

muffin_set_keybindings_about_workspace () {

	## Workspace
	#gsettings set org.gnome.mutter dynamic-workspaces false
	#gsettings set org.cinnamon.desktop.wm.preferences num-workspaces 4
	#gsettings set org.cinnamon.desktop.wm.preferences num-workspaces 10
	gsettings set org.cinnamon.desktop.wm.preferences num-workspaces 5
	
	
	gsettings set org.cinnamon.desktop.wm.preferences workspace-names "['Term', 'Edit', 'Web', 'File', 'Misc']"


	#gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-last "['<Super>End', '<Alt>z']"

	gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-up "['<Super>Page_Up', '<Control><Alt>Up', '<Alt>k']"
	gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-down "['<Super>Page_Down', '<Control><Alt>Down', '<Alt>j']"

	gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-left  "['<Control><Alt>Left', '<Alt>h', '<Alt>a']"
	gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-right  "['<Control><Alt>Right', '<Alt>l', '<Alt>s']"


	gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-1 "['<Alt>1']"
	gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-2 "['<Alt>2']"
	gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-3 "['<Alt>3']"
	gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-4 "['<Alt>4']"
	gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-5 "['<Alt>5']"
	gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-6 "['<Alt>6']"
	gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-7 "['<Alt>7']"
	gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-8 "['<Alt>8']"
	gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-9 "['<Alt>9']"
	gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-10 "['<Alt>0']"

	#gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-1 "['<Shift><Alt>exclam']"
	#gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-2 "['<Shift><Alt>at']"
	#gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-3 "['<Shift><Alt>numbersign']"
	#gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-4 "['<Shift><Alt>dollar']"
	#gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-5 "['<Shift><Alt>percent']"
	#gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-6 "['<Shift><Alt>asciicircum']"
	#gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-7 "['<Shift><Alt>ampersand']"
	#gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-8 "['<Shift><Alt>asterisk']"
	#gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-9 "['<Shift><Alt>parenleft']"
	#gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-10 "['<Shift><Alt>parenright']"

	# gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-1 "['<Alt><Super>1']"
	# gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-2 "['<Alt><Super>2']"
	# gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-3 "['<Alt><Super>3']"
	# gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-4 "['<Alt><Super>4']"
	# gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-5 "['<Alt><Super>5']"
	# gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-6 "['<Alt><Super>6']"
	# gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-7 "['<Alt><Super>7']"
	# gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-8 "['<Alt><Super>8']"
	# gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-9 "['<Alt><Super>9']"
	# gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-10 "['<Alt><Super>0']"


	gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-1 "['<Super>1']"
	gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-2 "['<Super>2']"
	gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-3 "['<Super>3']"
	gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-4 "['<Super>4']"
	gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-5 "['<Super>5']"
	gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-6 "['<Super>6']"
	gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-7 "['<Super>7']"
	gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-8 "['<Super>8']"
	gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-9 "['<Super>9']"
	gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-10 "['<Super>0']"

}


muffin_set_titlebar_action () {


	#gsettings range org.cinnamon.desktop.wm.preferences action-double-click-titlebar
	#gsettings range org.cinnamon.desktop.wm.preferences action-middle-click-titlebar
	#gsettings range org.cinnamon.desktop.wm.preferences action-right-click-titlebar
	#gsettings range org.cinnamon.desktop.wm.preferences action-scroll-titlebar



	#gsettings set org.cinnamon.desktop.wm.preferences action-double-click-titlebar 'toggle-maximize'
	#gsettings set org.cinnamon.desktop.wm.preferences action-middle-click-titlebar 'lower'
	#gsettings set org.cinnamon.desktop.wm.preferences action-right-click-titlebar 'menu'
	#gsettings set org.cinnamon.desktop.wm.preferences action-scroll-titlebar 'none'
	
	
	gsettings set org.cinnamon.desktop.wm.preferences action-middle-click-titlebar 'toggle-shade'
	
	#gsettings set org.cinnamon.desktop.wm.preferences action-scroll-titlebar 'shade'
	#gsettings set org.cinnamon.desktop.wm.preferences action-scroll-titlebar 'opacity'
	

}

##
### Tail: muffin
################################################################################


################################################################################
### Head: wmctrl
##
wmctrl_config_install () {

	wmctrl_put_toggledesktop_shell_script
	wmctrl_put_toggledesktop_desktop_entry


}

wmctrl_put_toggledesktop_shell_script () {

	mkdir -p "$HOME/.local/bin"
	echo "mkdir -p $HOME/.local/bin"

	install -m 755 "./config/wmctrl/wmctrl-toggle-show-desktop.sh" "$HOME/.local/bin/wmctrl-toggle-show-desktop.sh"
	echo "install -m 755 ./config/wmctrl/wmctrl-toggle-show-desktop.sh $HOME/.local/bin/wmctrl-toggle-show-desktop.sh"

}

wmctrl_put_toggledesktop_desktop_entry () {

	mkdir -p "$HOME/.local/share/applications"
	echo "mkdir -p $HOME/.local/share/applications"

	install -m 644 "./config/wmctrl/wmctrl-toggle-show-desktop.desktop" "$HOME/.local/share/applications/wmctrl-toggle-show-desktop.desktop"
	echo "install -m 644 ./config/wmctrl/wmctrl-toggle-show-desktop.desktop $HOME/.local/share/applications/wmctrl-toggle-show-desktop.desktop"

}
##
### Tail: wmctrl
################################################################################


################################################################################
### Head: xresources
##

xresources_config_install () {

	echo "mkdir -p $HOME/bin"
	mkdir -p "$HOME/bin"

	echo "install -m 755 ./config/xresources/xresources-load.sh $HOME/bin/xresources-load.sh"
	install -m 755 "./config/xresources/xresources-load.sh" "$HOME/bin/xresources-load.sh"

}

##
### Tail: xresources
################################################################################


################################################################################
### Head: wallpaper
##
wallpaper_config_install () {

	mkdir -p "$HOME/bin"
	echo "mkdir -p $HOME/bin/"

	cp "./config/wallpaper/wallpaper.sh" "$HOME/bin/wallpaper.sh"
	echo "cp ./config/wallpaper/wallpaper.sh $HOME/bin/wallpaper.sh"


}
##
### Tail: wallpaper
################################################################################


################################################################################
### Head: tint2
##
tint2_config_install () {

	mkdir -p "$HOME/.config/muffin-session/tint2"
	echo "mkdir -p $HOME/.config/muffin-session/tint2"

	cp "./config/tint2/tint2rc" "$HOME/.config/muffin-session/tint2/tint2rc"
	echo "cp ./config/tint2/tint2rc $HOME/.config/muffin-session/tint2/tint2rc"

}

tint2_config_install_default () {

	mkdir -p "$HOME/.config/tint2"
	echo "mkdir -p $HOME/.config/tint2"

	cp "./config/tint2/tint2rc" "$HOME/.config/tint2/tint2rc"
	echo "cp ./config/tint2/tint2rc $HOME/.config/tint2/tint2rc"

}
##
### Tail: tint2
################################################################################


################################################################################
### Head: compton
##
compton_config_install () {

	## $ dpkg -L compton | grep conf
	## /usr/share/doc/compton/examples/compton.sample.conf
	## cp $(dpkg -L compton | grep conf) ~/.config/compton.conf


	mkdir -p "$HOME/.config/muffin-session/compton"
	echo "mkdir -p $HOME/.config/muffin-session/compton"

	#cp "/usr/share/doc/compton/examples/compton.sample.conf" "$HOME/.config/muffin-session/compton/compton.conf"
	#echo "cp /usr/share/doc/compton/examples/compton.sample.conf $HOME/.config/muffin-session/compton/compton.conf"

	cp "./config/compton/compton.conf" "$HOME/.config/muffin-session/compton/compton.conf"
	echo "cp ./config/compton/compton.conf $HOME/.config/muffin-session/compton/compton.conf"


}
##
### Tail: compton
################################################################################


################################################################################
### Head: volumeicon
##
volumeicon_config_install () {

	mkdir -p "$HOME/.config/volumeicon"
	echo "mkdir -p $HOME/.config/volumeicon"

	cp "./config/volumeicon/volumeicon" "$HOME/.config/volumeicon/volumeicon"
	echo "cp ./config/volumeicon/volumeicon $HOME/.config/volumeicon/volumeicon"

}
##
### Tail: volumeicon
################################################################################


################################################################################
### Head: sxhkd
##

sxhkd_config_install () {

	mkdir -p "$HOME/.config/muffin-session/sxhkd"
	echo "mkdir -p $HOME/.config/muffin-session/sxhkd"

	cp "./config/sxhkd/sxhkdrc" "$HOME/.config/muffin-session/sxhkd/sxhkdrc"
	echo "cp ./config/sxhkd/sxhkdrc $HOME/.config/muffin-session/sxhkd/sxhkdrc"

}

##
### Tail: sxhkd
################################################################################


################################################################################
### Head: lxqt-globalkeys
##
lxqt_globalkeys_config_install () {

	mkdir -p "$HOME/.config/muffin-session/lxqt"
	echo "mkdir -p $HOME/.config/muffin-session/lxqt"

	cp "./config/lxqt/globalkeyshortcuts.conf" "$HOME/.config/muffin-session/lxqt/globalkeyshortcuts.conf"
	echo "cp ./config/lxqt/globalkeyshortcuts.conf $HOME/.config/muffin-session/lxqt/globalkeyshortcuts.conf"

}
##
### Tail: lxqt-globalkeys
################################################################################


################################################################################
### Head: pcmanfm-qt
##
pcmanfm_qt_config_install () {

	mkdir -p "$HOME/.config/pcmanfm-qt/default"
	echo "mkdir -p $HOME/.config/pcmanfm-qt/default"

	cp ./config/pcmanfm-qt/default/settings.conf "$HOME/.config/pcmanfm-qt/default/settings.conf"
	echo "cp ./config/pcmanfm-qt/default/settings.conf $HOME/.config/pcmanfm-qt/default/settings.conf"

	mkdir -p "$HOME/.config/pcmanfm-qt/muffin-session"
	echo "mkdir -p $HOME/.config/pcmanfm-qt/muffin-session"

	cp ./config/pcmanfm-qt/muffin-session/settings.conf "$HOME/.config/pcmanfm-qt/muffin-session/settings.conf"
	echo "cp ./config/pcmanfm-qt/muffin-session/settings.conf $HOME/.config/pcmanfm-qt/muffin-session/settings.conf"


}
##
### Tail: pcmanfm-qt
################################################################################


################################################################################
### Head: rofi
##
rofi_config_install () {
	mkdir -p "$HOME/.config/rofi"
	echo "mkdir -p $HOME/.config/rofi"

	cp "./config/rofi/config" "$HOME/.config/rofi/config"
	echo "cp ./config/rofi/config $HOME/.config/rofi/config"

	rofi_put_app_desktop_entry
}

rofi_put_app_desktop_entry () {
	mkdir -p "$HOME/.local/share/applications"
	echo "mkdir -p $HOME/.local/share/applications"

	cp "./config/rofi/rofi-show-drun.desktop" "$HOME/.local/share/applications/rofi-show-drun.desktop"
	echo "cp ./config/rofi/rofi-show-drun.desktop $HOME/.local/share/applications/rofi-show-drun.desktop"

	cp "./config/rofi/rofi-show-run.desktop" "$HOME/.local/share/applications/rofi-show-run.desktop"
	echo "cp ./config/rofi/rofi-show-run.desktop $HOME/.local/share/applications/rofi-show-run.desktop"

	cp "./config/rofi/rofi-show-window.desktop" "$HOME/.local/share/applications/rofi-show-window.desktop"
	echo "cp ./config/rofi/rofi-show-window.desktop $HOME/.local/share/applications/rofi-show-window.desktop"

}
##
### Tail: rofi
################################################################################


################################################################################
### Head: sakura
##
sakura_config_install () {
	mkdir -p "$HOME/.config/sakura"
	echo "mkdir -p $HOME/.config/sakura"

	cp "./config/sakura/sakura.conf" "$HOME/.config/sakura/sakura.conf"
	echo "cp ./config/sakura/sakura.conf $HOME/.config/sakura/sakura.conf"


	sakura_put_my_desktop_entry
}

sakura_put_my_desktop_entry () {
	mkdir -p "$HOME/.local/share/applications"
	echo "mkdir -p $HOME/.local/share/applications"

	cp "/usr/share/applications/sakura.desktop" "$HOME/.local/share/applications/sakura.desktop"
	echo "cp /usr/share/applications/sakura.desktop $HOME/.local/share/applications/sakura.desktop"

	sed -i 's/^Exec=sakura/Exec=sakura -m/g' "$HOME/.local/share/applications/sakura.desktop"
	echo "sed -i 's/^Exec=sakura/Exec=sakura -m/g' $HOME/.local/share/applications/sakura.desktop"
}
##
### Tail: sakura
################################################################################


################################################################################
### Head: fcitx
##
fcitx_config_install () {
	mkdir -p $HOME/.config/fcitx
	echo "mkdir -p $HOME/.config/fcitx"

	cp ./config/fcitx/profile $HOME/.config/fcitx/profile
	echo "cp ./config/fcitx/profile $HOME/.config/fcitx/profile"

	fcitx_config_install_im_config

}

fcitx_config_install_im_config () {
	echo
	im-config -n fcitx
	echo "im-config -n fcitx"
	echo "cat ~/.xinputrc"
	cat ~/.xinputrc
	echo
}
##
### Tail: fcitx
################################################################################


################################################################################
### Head: gtk3
##
gtk3_config_install () {
	mkdir -p $HOME/.config/gtk-3.0
	echo "mkdir -p $HOME/.config/gtk-3.0"

	cp ./config/gtk3/settings.ini $HOME/.config/gtk-3.0/settings.ini
	echo "cp ./config/gtk3/settings.ini $HOME/.config/gtk-3.0/settings.ini"
}
##
### Tail: gtk3
################################################################################


################################################################################
### Head: gtk2
##
gtk2_config_install () {

	cp ./config/gtk2/.gtkrc-2.0 $HOME/.gtkrc-2.0
	echo "cp ./config/gtk2/.gtkrc-2.0 $HOME/.gtkrc-2.0"

}
##
### Tail: gtk2
################################################################################


################################################################################
### Head: main
##
main_config_install () {

	xsession_config_install

	#wmctrl_config_install

	xresources_config_install

	wallpaper_config_install

	tint2_config_install

	compton_config_install

	volumeicon_config_install

	sxhkd_config_install

	#lxqt_globalkeys_config_install

	pcmanfm_qt_config_install

	rofi_config_install

	sakura_config_install

	fcitx_config_install

	gtk3_config_install

	gtk2_config_install

	muffin_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
