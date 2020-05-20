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

	## $ dpkg -L bspwm | grep 'examples/sxhkdrc'
	## /usr/share/doc/bspwm/examples/sxhkdrc
	## cp $(dpkg -L bspwm | grep 'examples/sxhkdrc') ~/.config/sxhkd/sxhkdrc


	echo "mkdir -p $HOME/.config/bspwm/sxhkd"
	mkdir -p "$HOME/.config/bspwm/sxhkd"

	echo "cp ./config/sxhkd/sxhkdrc $HOME/.config/bspwm/sxhkd/sxhkdrc"
	cp "./config/sxhkd/sxhkdrc" "$HOME/.config/bspwm/sxhkd/sxhkdrc"


	sxhkd_config_install_bsp_sxhkd
	sxhkd_config_install_bsp_sxhkd_start


	sxhkd_config_install_option_theme_file

	sxhkd_config_install_theme_default
	sxhkd_config_install_theme_basic


	sxhkd_config_install_bsp_sxhkd_completion_bash
}


sxhkd_config_install_bsp_sxhkd_start () {

	echo "install -m 755 ./config/sxhkd/bin/bsp-sxhkd-start $HOME/bin/bsp-sxhkd-start"
	install -m 755 "./config/sxhkd/bin/bsp-sxhkd-start" "$HOME/bin/bsp-sxhkd-start"


}

sxhkd_config_install_bsp_sxhkd () {

	echo "install -m 755 ./config/sxhkd/bin/bsp-sxhkd $HOME/bin/bsp-sxhkd"
	install -m 755 "./config/sxhkd/bin/bsp-sxhkd" "$HOME/bin/bsp-sxhkd"

}

sxhkd_config_install_bsp_sxhkd_completion_bash () {

	echo "install -m 755 ./config/sxhkd/completion/bash/bsp-sxhkd /etc/bash_completion.d/bsp-sxhkd"
	sudo install -m 644 "./config/sxhkd/completion/bash/bsp-sxhkd" "/etc/bash_completion.d/bsp-sxhkd"
}



sxhkd_config_install_option_theme_file () {

	mkdir -p "$HOME/.config/bspwm/sxhkd/option"
	echo "mkdir -p $HOME/.config/bspwm/sxhkd/option"


	echo "echo 'default' > $HOME/.config/bspwm/sxhkd/option/theme"
	echo 'default' > "$HOME/.config/bspwm/sxhkd/option/theme"

}

sxhkd_config_install_theme_default () {

	mkdir -p "$HOME/.config/bspwm/sxhkd/theme/default/config/on"
	echo "mkdir -p $HOME/.config/bspwm/sxhkd/theme/default/config/on"


	echo "install -m 664 ./config/sxhkd/theme/default/config/on/main.conf $HOME/.config/bspwm/sxhkd/theme/default/config/on/main.conf"
	install -m 664 "./config/sxhkd/theme/default/config/on/main.conf" "$HOME/.config/bspwm/sxhkd/theme/default/config/on/main.conf"

}


sxhkd_config_install_theme_basic () {

	mkdir -p "$HOME/.config/bspwm/sxhkd/theme/basic/config/on"
	echo "mkdir -p $HOME/.config/bspwm/sxhkd/theme/basic/config/on"


	echo "install -m 664 ./config/sxhkd/theme/basic/config/on/main.conf $HOME/.config/bspwm/sxhkd/theme/basic/config/on/main.conf"
	install -m 664 "./config/sxhkd/theme/basic/config/on/main.conf" "$HOME/.config/bspwm/sxhkd/theme/basic/config/on/main.conf"

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


	echo "mkdir -p $HOME/.config/bspwm/wallpaper"
	mkdir -p "$HOME/.config/bspwm/wallpaper"

	echo "cp ./config/wallpaper/wallpaper-fallback.conf $HOME/.config/bspwm/wallpaper/wallpaper-fallback.conf"
	cp "./config/wallpaper/wallpaper-fallback.conf" "$HOME/.config/bspwm/wallpaper/wallpaper-fallback.conf"


	wallpaper_config_install_bsp_wallpaper
	wallpaper_config_install_bsp_wallpaper_start


	wallpaper_config_install_option_theme_file


	wallpaper_config_install_theme_default
	wallpaper_config_install_theme_bionic_spices_in_athens
	wallpaper_config_install_theme_bionic_manhattan_sunset


	wallpaper_config_install_bsp_wallpaper_completion_bash
}

wallpaper_config_install_simple () {

	echo "mkdir -p $HOME/bin/"
	mkdir -p "$HOME/bin"

	echo "cp ./config/wallpaper/wallpaper.sh $HOME/bin/wallpaper.sh"
	cp "./config/wallpaper/wallpaper.sh" "$HOME/bin/wallpaper.sh"

}

wallpaper_config_install_bsp_wallpaper_start () {

	echo "install -m 755 ./config/wallpaper/bin/bsp-wallpaper-start $HOME/bin/bsp-wallpaper-start"
	install -m 755 "./config/wallpaper/bin/bsp-wallpaper-start" "$HOME/bin/bsp-wallpaper-start"


}

wallpaper_config_install_bsp_wallpaper () {

	echo "install -m 755 ./config/wallpaper/bin/bsp-wallpaper $HOME/bin/bsp-wallpaper"
	install -m 755 "./config/wallpaper/bin/bsp-wallpaper" "$HOME/bin/bsp-wallpaper"

}

wallpaper_config_install_bsp_wallpaper_completion_bash () {

	echo "install -m 755 ./config/wallpaper/completion/bash/bsp-wallpaper /etc/bash_completion.d/bsp-wallpaper"
	sudo install -m 644 "./config/wallpaper/completion/bash/bsp-wallpaper" "/etc/bash_completion.d/bsp-wallpaper"
}



wallpaper_config_install_option_theme_file () {

	mkdir -p "$HOME/.config/bspwm/wallpaper/option"
	echo "mkdir -p $HOME/.config/bspwm/wallpaper/option"


	echo "echo 'default' > $HOME/.config/bspwm/wallpaper/option/theme"
	echo 'default' > "$HOME/.config/bspwm/wallpaper/option/theme"

}

wallpaper_config_install_theme_default () {

	mkdir -p "$HOME/.config/bspwm/wallpaper/theme/default/config/on"
	echo "mkdir -p $HOME/.config/bspwm/wallpaper/theme/default/config/on"


	echo "install -m 664 ./config/wallpaper/theme/default/config/on/main.conf $HOME/.config/bspwm/wallpaper/theme/default/config/on/main.conf"
	install -m 664 "./config/wallpaper/theme/default/config/on/main.conf" "$HOME/.config/bspwm/wallpaper/theme/default/config/on/main.conf"

}


wallpaper_config_install_theme_bionic_spices_in_athens () {

	mkdir -p "$HOME/.config/bspwm/wallpaper/theme/bionic.Spices_in_Athens/config/on"
	echo "mkdir -p $HOME/.config/bspwm/wallpaper/theme/bionic.Spices_in_Athens/config/on"


	echo "install -m 664 ./config/wallpaper/theme/bionic.Spices_in_Athens/config/on/main.conf $HOME/.config/bspwm/wallpaper/theme/bionic.Spices_in_Athens/config/on/main.conf"
	install -m 664 "./config/wallpaper/theme/bionic.Spices_in_Athens/config/on/main.conf" "$HOME/.config/bspwm/wallpaper/theme/bionic.Spices_in_Athens/config/on/main.conf"

}

wallpaper_config_install_theme_bionic_manhattan_sunset () {

	mkdir -p "$HOME/.config/bspwm/wallpaper/theme/bionic.Manhattan_Sunset/config/on"
	echo "mkdir -p $HOME/.config/bspwm/wallpaper/theme/bionic.Manhattan_Sunset/config/on"


	echo "install -m 664 ./config/wallpaper/theme/bionic.Manhattan_Sunset/config/on/main.conf $HOME/.config/bspwm/wallpaper/theme/bionic.Manhattan_Sunset/config/on/main.conf"
	install -m 664 "./config/wallpaper/theme/bionic.Manhattan_Sunset/config/on/main.conf" "$HOME/.config/bspwm/wallpaper/theme/bionic.Manhattan_Sunset/config/on/main.conf"

}
##
### Tail: wallpaper
################################################################################



################################################################################
### Head: tint2
##
tint2_config_install () {

	echo "mkdir -p $HOME/bin"
	mkdir -p "$HOME/bin"

	echo "mkdir -p $HOME/.config/bspwm/tint2"
	mkdir -p "$HOME/.config/bspwm/tint2"

	echo "cp ./config/tint2/tint2rc $HOME/.config/bspwm/tint2/tint2rc"
	cp "./config/tint2/tint2rc" "$HOME/.config/bspwm/tint2/tint2rc"


	tint2_config_install_bsp_tint2_completion_bash

	tint2_config_install_bsp_tint2
	tint2_config_install_bsp_tint2_start


	tint2_config_install_option_theme_file

	tint2_config_install_theme_default
	tint2_config_install_theme_two_panel
	tint2_config_install_theme_two_panel_desktop_clock

}

tint2_config_install_bsp_tint2_start () {

	echo "install -m 755 ./config/tint2/bin/bsp-tint2-start $HOME/bin/bsp-tint2-start"
	install -m 755 "./config/tint2/bin/bsp-tint2-start" "$HOME/bin/bsp-tint2-start"


}

tint2_config_install_bsp_tint2 () {

	echo "install -m 755 ./config/tint2/bin/bsp-tint2 $HOME/bin/bsp-tint2"
	install -m 755 "./config/tint2/bin/bsp-tint2" "$HOME/bin/bsp-tint2"

}

tint2_config_install_bsp_tint2_completion_bash () {

	echo "install -m 755 ./config/tint2/completion/bash/bsp-tint2 /etc/bash_completion.d/bsp-tint2"
	sudo install -m 644 "./config/tint2/completion/bash/bsp-tint2" "/etc/bash_completion.d/bsp-tint2"
}



tint2_config_install_option_theme_file () {

	mkdir -p "$HOME/.config/bspwm/tint2/option"
	echo "mkdir -p $HOME/.config/bspwm/tint2/option"


	echo "echo 'default' > $HOME/.config/bspwm/tint2/option/theme"
	echo 'default' > "$HOME/.config/bspwm/tint2/option/theme"

}

tint2_config_install_theme_default () {

	mkdir -p "$HOME/.config/bspwm/tint2/theme/default/config/on"
	echo "mkdir -p $HOME/.config/bspwm/tint2/theme/default/config/on"


	echo "install -m 664 ./config/tint2/theme/default/config/on/main.conf $HOME/.config/bspwm/tint2/theme/default/config/on/main.conf"
	install -m 664 "./config/tint2/theme/default/config/on/main.conf" "$HOME/.config/bspwm/tint2/theme/default/config/on/main.conf"

}

tint2_config_install_theme_two_panel () {

	mkdir -p "$HOME/.config/bspwm/tint2/theme/two_panel/config/on"
	echo "mkdir -p $HOME/.config/bspwm/tint2/theme/two_panel/config/on"


	echo "install -m 664 ./config/tint2/theme/two_panel/config/on/app_panel.conf $HOME/.config/bspwm/tint2/theme/two_panel/config/on/app_panel.conf"
	install -m 664 "./config/tint2/theme/two_panel/config/on/app_panel.conf" "$HOME/.config/bspwm/tint2/theme/two_panel/config/on/app_panel.conf"

	echo "install -m 664 ./config/tint2/theme/two_panel/config/on/task_panel.conf $HOME/.config/bspwm/tint2/theme/two_panel/config/on/task_panel.conf"
	install -m 664 "./config/tint2/theme/two_panel/config/on/task_panel.conf" "$HOME/.config/bspwm/tint2/theme/two_panel/config/on/task_panel.conf"

}

tint2_config_install_theme_two_panel_desktop_clock () {

	mkdir -p "$HOME/.config/bspwm/tint2/theme/two_panel_desktop_clock/config/on"
	echo "mkdir -p $HOME/.config/bspwm/tint2/theme/two_panel_desktop_clock/config/on"

	mkdir -p "$HOME/.config/bspwm/tint2/theme/two_panel_desktop_clock/config/off"
	echo "mkdir -p $HOME/.config/bspwm/tint2/theme/two_panel_desktop_clock/config/off"

	echo "install -m 664 ./config/tint2/theme/two_panel_desktop_clock/config/on/app_panel.conf $HOME/.config/bspwm/tint2/theme/two_panel_desktop_clock/config/on/app_panel.conf"
	install -m 664 "./config/tint2/theme/two_panel_desktop_clock/config/on/app_panel.conf" "$HOME/.config/bspwm/tint2/theme/two_panel_desktop_clock/config/on/app_panel.conf"

	echo "install -m 664 ./config/tint2/theme/two_panel_desktop_clock/config/on/task_panel.conf $HOME/.config/bspwm/tint2/theme/two_panel_desktop_clock/config/on/task_panel.conf"
	install -m 664 "./config/tint2/theme/two_panel_desktop_clock/config/on/task_panel.conf" "$HOME/.config/bspwm/tint2/theme/two_panel_desktop_clock/config/on/task_panel.conf"

	echo "install -m 664 ./config/tint2/theme/two_panel_desktop_clock/config/on/time_panel.conf $HOME/.config/bspwm/tint2/theme/two_panel_desktop_clock/config/on/time_panel.conf"
	install -m 664 "./config/tint2/theme/two_panel_desktop_clock/config/on/time_panel.conf" "$HOME/.config/bspwm/tint2/theme/two_panel_desktop_clock/config/on/time_panel.conf"


	echo "install -m 664 ./config/tint2/theme/two_panel_desktop_clock/config/off/clock_panel.conf $HOME/.config/bspwm/tint2/theme/two_panel_desktop_clock/config/off/clock_panel.conf"
	install -m 664 "./config/tint2/theme/two_panel_desktop_clock/config/off/clock_panel.conf" "$HOME/.config/bspwm/tint2/theme/two_panel_desktop_clock/config/off/clock_panel.conf"

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

	xresources_config_install


	volumeicon_config_install

	pcmanfm_qt_config_install

	rofi_config_install

	sakura_config_install

	fcitx_config_install

	gtk3_config_install

	gtk2_config_install




	sxhkd_config_install

	compton_config_install

	tint2_config_install

	wallpaper_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
