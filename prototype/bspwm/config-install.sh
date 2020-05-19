#!/usr/bin/env bash

set -e


################################################################################
### Head: bspwm
##
bspwm_config_install () {

	echo "mkdir -p $HOME/bin"
	mkdir -p "$HOME/bin"

	mkdir -p "$HOME/.config/bspwm"
	echo "mkdir -p $HOME/.config/bspwm"

	cp "./config/bspwm/bspwmrc" "$HOME/.config/bspwm/bspwmrc"
	echo "cp ./config/bspwm/bspwmrc $HOME/.config/bspwm/bspwmrc"


	bspwm_config_install_put_xf_autostart
	bspwm_config_install_put_xf_applet

}

bspwm_config_install_put_xf_autostart () {

	# echo "mkdir -p $HOME/bin"
	# mkdir -p "$HOME/bin"

	echo "install -m 755 ./config/bspwm/bin/bsp-autostart $HOME/bin/bsp-autostart"
	install -m 755 "./config/bspwm/bin/bsp-autostart" "$HOME/bin/bsp-autostart"

}

bspwm_config_install_put_xf_applet () {

	# echo "mkdir -p $HOME/bin"
	# mkdir -p "$HOME/bin"

	echo "install -m 755 ./config/bspwm/bin/bsp-applet $HOME/bin/bsp-applet"
	install -m 755 "./config/bspwm/bin/bsp-applet" "$HOME/bin/bsp-applet"

}

##
### Tail: bspwm
################################################################################


################################################################################
### Head: sxhkd
##

sxhkd_config_install () {

	mkdir -p "$HOME/.config/bspwm"
	echo "mkdir -p $HOME/.config/bspwm"

	cp "./config/bspwm/sxhkdrc" "$HOME/.config/bspwm/sxhkdrc"
	echo "cp ./config/bspwm/sxhkdrc $HOME/.config/bspwm/sxhkdrc"

}

##
### Tail: sxhkd
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

	mkdir -p "$HOME/.config/bspwm/tint2"
	echo "mkdir -p $HOME/.config/bspwm/tint2"

	cp "./config/tint2/tint2rc" "$HOME/.config/bspwm/tint2/tint2rc"
	echo "cp ./config/tint2/tint2rc $HOME/.config/bspwm/tint2/tint2rc"

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


	mkdir -p "$HOME/.config/bspwm/compton"
	echo "mkdir -p $HOME/.config/bspwm/compton"

	#cp "/usr/share/doc/compton/examples/compton.sample.conf" "$HOME/.config/bspwm/compton/compton.conf"
	#echo "cp /usr/share/doc/compton/examples/compton.sample.conf $HOME/.config/bspwm/compton/compton.conf"

	cp "./config/compton/compton.conf" "$HOME/.config/bspwm/compton/compton.conf"
	echo "cp ./config/compton/compton.conf $HOME/.config/bspwm/compton/compton.conf"


	compton_config_install_bsp_compton
	compton_config_install_bsp_compton_start


	compton_config_install_option_theme_file

	compton_config_install_theme_default
	compton_config_install_theme_basic


	compton_config_install_bsp_compton_completion_bash
}


compton_config_install_bsp_compton_start () {

	echo "install -m 755 ./config/compton/bin/bsp-compton-start $HOME/bin/bsp-compton-start"
	install -m 755 "./config/compton/bin/bsp-compton-start" "$HOME/bin/bsp-compton-start"


}

compton_config_install_bsp_compton () {

	echo "install -m 755 ./config/compton/bin/bsp-compton $HOME/bin/bsp-compton"
	install -m 755 "./config/compton/bin/bsp-compton" "$HOME/bin/bsp-compton"

}

compton_config_install_bsp_compton_completion_bash () {

	echo "install -m 755 ./config/compton/completion/bash/bsp-compton /etc/bash_completion.d/bsp-compton"
	sudo install -m 644 "./config/compton/completion/bash/bsp-compton" "/etc/bash_completion.d/bsp-compton"
}



compton_config_install_option_theme_file () {

	mkdir -p "$HOME/.config/bspwm/compton/option"
	echo "mkdir -p $HOME/.config/bspwm/compton/option"


	echo "echo 'default' > $HOME/.config/bspwm/compton/option/theme"
	echo 'default' > "$HOME/.config/bspwm/compton/option/theme"

}

compton_config_install_theme_default () {

	mkdir -p "$HOME/.config/bspwm/compton/theme/default/config/on"
	echo "mkdir -p $HOME/.config/bspwm/compton/theme/default/config/on"


	echo "install -m 664 ./config/compton/theme/default/config/on/compton.conf $HOME/.config/bspwm/compton/theme/default/config/on/compton.conf"
	install -m 664 "./config/compton/theme/default/config/on/compton.conf" "$HOME/.config/bspwm/compton/theme/default/config/on/compton.conf"

}


compton_config_install_theme_basic () {

	mkdir -p "$HOME/.config/bspwm/compton/theme/basic/config/on"
	echo "mkdir -p $HOME/.config/bspwm/compton/theme/basic/config/on"


	echo "install -m 664 ./config/compton/theme/basic/config/on/compton.conf $HOME/.config/bspwm/compton/theme/basic/config/on/compton.conf"
	install -m 664 "./config/compton/theme/basic/config/on/compton.conf" "$HOME/.config/bspwm/compton/theme/basic/config/on/compton.conf"

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

	bspwm_config_install

	sxhkd_config_install

	xresources_config_install

	wallpaper_config_install

	tint2_config_install

	volumeicon_config_install

	pcmanfm_qt_config_install

	rofi_config_install

	sakura_config_install

	fcitx_config_install

	gtk3_config_install

	gtk2_config_install

	compton_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
