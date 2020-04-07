#!/usr/bin/env bash

set -e


################################################################################
### Head: xsession
##
xsession_config_install () {

	echo "Install Xsession:"

	## install
	sudo install -m 644 "./config/xsession/spectrwm-session.desktop" "/usr/share/xsessions/spectrwm-session.desktop"
	sudo install -m 755 "./config/xsession/spectrwm-session.sh" "/usr/local/bin/spectrwm-session.sh"

	## check
	ls -l "/usr/share/xsessions/spectrwm-session.desktop"
	ls -l "/usr/local/bin/spectrwm-session.sh"

}

##
### Tail: xsession
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

xresources_config_install_global () {
	sudo install -m 755 "./config/xresources/xresources-load.sh" "/usr/local/bin/xresources-load.sh"

	ls -l "/usr/local/bin/xresources-load.sh"
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
### Head: spectrwm
##
spectrwm_config_install () {
	mkdir -p "$HOME/.config/spectrwm"
	echo "mkdir -p $HOME/.config/spectrwm"

	cp "./config/spectrwm/spectrwm.conf" "$HOME/.spectrwm.conf"
	echo "cp ./config/spectrwm/spectrwm.conf $HOME/.spectrwm.conf"

	cp "./config/spectrwm/spectrwm.keybind.conf" "$HOME/.config/spectrwm/spectrwm.keybind.conf"
	echo "cp ./config/spectrwm/spectrwm.keybind.conf $HOME/.config/spectrwm/spectrwm.keybind.conf"

}
##
### Tail: spectrwm
################################################################################


################################################################################
### Head: stalonetray
##

stalonetray_config_install () {

	echo "sudo install -m 755 ./config/stalonetray/spectrwm-stalonetray-restart.sh /usr/local/bin/spectrwm-stalonetray-restart.sh"
	sudo install -m 755 "./config/stalonetray/spectrwm-stalonetray-restart.sh" "/usr/local/bin/spectrwm-stalonetray-restart.sh"

	echo "sudo install -m 755 ./config/stalonetray/spectrwm-stalonetray-close.sh /usr/local/bin/spectrwm-stalonetray-close.sh"
	sudo install -m 755 "./config/stalonetray/spectrwm-stalonetray-close.sh" "/usr/local/bin/spectrwm-stalonetray-close.sh"

	echo "sudo install -m 755 ./config/stalonetray/spectrwm-stalonetray-start.sh /usr/local/bin/spectrwm-stalonetray-start.sh"
	sudo install -m 755 "./config/stalonetray/spectrwm-stalonetray-start.sh" "/usr/local/bin/spectrwm-stalonetray-start.sh"


}

##
### Tail: stalonetray
################################################################################


################################################################################
### Head: compton
##
compton_config_install () {

	## $ dpkg -L compton | grep conf
	## /usr/share/doc/compton/examples/compton.sample.conf
	## cp $(dpkg -L compton | grep conf) ~/.config/compton.conf


	mkdir -p "$HOME/.config/spectrwm/compton"
	echo "mkdir -p $HOME/.config/spectrwm/compton"

	#cp "/usr/share/doc/compton/examples/compton.sample.conf" "$HOME/.config/spectrwm/compton/compton.conf"
	#echo "cp /usr/share/doc/compton/examples/compton.sample.conf $HOME/.config/spectrwm/compton/compton.conf"

	cp "./config/compton/compton.conf" "$HOME/.config/spectrwm/compton/compton.conf"
	echo "cp ./config/compton/compton.conf $HOME/.config/spectrwm/compton/compton.conf"

	#cp "./config/compton/compton.conf" "$HOME/.config/compton.conf"
	#echo "cp ./config/compton/compton.conf $HOME/.config/compton.conf"


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
### Head: pcmanfm-qt
##
pcmanfm_qt_config_install () {

	mkdir -p "$HOME/.config/pcmanfm-qt/default"
	echo "mkdir -p $HOME/.config/pcmanfm-qt/default"

	cp "./config/pcmanfm-qt/default/settings.conf" "$HOME/.config/pcmanfm-qt/default/settings.conf"
	echo "cp ./config/pcmanfm-qt/default/settings.conf $HOME/.config/pcmanfm-qt/default/settings.conf"

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

	echo "mkdir -p $HOME/.config/sakura"
	mkdir -p "$HOME/.config/sakura"


	echo "cp ./config/sakura/sakura.conf $HOME/.config/sakura/sakura.conf"
	cp "./config/sakura/sakura.conf" "$HOME/.config/sakura/sakura.conf"

	sakura_put_my_desktop_entry

}

sakura_put_my_desktop_entry () {

	echo "mkdir -p $HOME/.local/share/applications"
	mkdir -p "$HOME/.local/share/applications"

	echo "cp /usr/share/applications/sakura.desktop $HOME/.local/share/applications/sakura.desktop"
	cp "/usr/share/applications/sakura.desktop" "$HOME/.local/share/applications/sakura.desktop"

	echo "sed -i 's/^Exec=sakura/Exec=sakura -m/g' $HOME/.local/share/applications/sakura.desktop"
	sed -i 's/^Exec=sakura/Exec=sakura -m/g' "$HOME/.local/share/applications/sakura.desktop"

}
##
### Tail: sakura
################################################################################


################################################################################
### Head: fcitx
##
fcitx_config_install () {
	mkdir -p "$HOME/.config/fcitx"
	echo "mkdir -p $HOME/.config/fcitx"

	cp "./config/fcitx/profile" "$HOME/.config/fcitx/profile"
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
	mkdir -p "$HOME/.config/gtk-3.0"
	echo "mkdir -p $HOME/.config/gtk-3.0"

	cp "./config/gtk3/settings.ini" "$HOME/.config/gtk-3.0/settings.ini"
	echo "cp ./config/gtk3/settings.ini $HOME/.config/gtk-3.0/settings.ini"
}
##
### Tail: gtk3
################################################################################


################################################################################
### Head: gtk2
##
gtk2_config_install () {

	cp "./config/gtk2/.gtkrc-2.0" "$HOME/.gtkrc-2.0"
	echo "cp ./config/gtk2/.gtkrc-2.0 $HOME/.gtkrc-2.0"

}
##
### Tail: gtk2
################################################################################


################################################################################
### Head: main
##
main_config_install () {

	spectrwm_config_install

	wallpaper_config_install

	compton_config_install

	volumeicon_config_install

	pcmanfm_qt_config_install

	rofi_config_install

	sakura_config_install

	fcitx_config_install

	gtk3_config_install

	gtk2_config_install

	xsession_config_install

	xresources_config_install

	stalonetray_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
