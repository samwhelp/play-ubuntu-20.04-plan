#!/usr/bin/env bash

set -e


################################################################################
### Head: awesome
##
awesome_config_install () {

	echo "mkdir -p $HOME/bin"
	mkdir -p "$HOME/bin"

	#echo "mkdir -p $HOME/.config/awesome"
	#mkdir -p "$HOME/.config/awesome"

	echo "mkdir -p $HOME/.config/awesome-session"
	mkdir -p "$HOME/.config/awesome-session"



	awesome_config_install_check_target_exists && awesome_config_install_copy_config_dir


	awesome_config_install_put_xf_autostart
	awesome_config_install_put_xf_applet

}

awesome_config_install_copy_config_dir() {

	##echo "rm -rf $HOME/.config/awesome"
	##rm -rf "$HOME/.config/awesome"

	echo "cp config/awesome/start $HOME/.config/awesome -a"
	cp "config/awesome/start" "$HOME/.config/awesome" -a
}

awesome_config_install_check_target_exists () {

	awesome_config_install_check_target_exists_util "$HOME/.config/awesome" "awesome"
	##echo $?
}

awesome_config_install_check_target_exists_util () {

	local target_file_path="$1"
	local target_file_name="$2"

	if ! [ -e "$target_file_path" ]; then ## file not exists
		return 0
	fi


	echo "File is exists:" "$target_file_path"
	echo

	echo "Try to backup:"
	echo

	local now=$(date +%Y%m%d_%s)
	local bak_dir_path="${HOME}/.config/${target_file_name}.bak"
	local bak_file_path="${bak_dir_path}/${target_file_name}.bak.$now"

	mkdir -p $bak_dir_path

	mv -v "$target_file_path" "${bak_file_path}"

	if [ "$?" != "0" ]; then
		echo
		echo 'Backup Failure!'
		exit 1
	fi

	echo

	return 0
}



awesome_config_install_put_xf_autostart () {

	# echo "mkdir -p $HOME/bin"
	# mkdir -p "$HOME/bin"

	echo "install -m 755 ./config/awesome-session/bin/aw-autostart $HOME/bin/aw-autostart"
	install -m 755 "./config/awesome-session/bin/aw-autostart" "$HOME/bin/aw-autostart"

}

awesome_config_install_put_xf_applet () {

	# echo "mkdir -p $HOME/bin"
	# mkdir -p "$HOME/bin"

	echo "install -m 755 ./config/awesome-session/bin/aw-applet $HOME/bin/aw-applet"
	install -m 755 "./config/awesome-session/bin/aw-applet" "$HOME/bin/aw-applet"

}


##
### Tail: awesome
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
### Head: compton
##
compton_config_install () {

	## $ dpkg -L compton | grep conf
	## /usr/share/doc/compton/examples/compton.sample.conf
	## cp $(dpkg -L compton | grep conf) ~/.config/compton.conf


	mkdir -p "$HOME/.config/awesome-session/compton"
	echo "mkdir -p $HOME/.config/awesome-session/compton"

	#cp "/usr/share/doc/compton/examples/compton.sample.conf" "$HOME/.config/awesome-session/compton/compton.conf"
	#echo "cp /usr/share/doc/compton/examples/compton.sample.conf $HOME/.config/awesome-session/compton/compton.conf"

	cp "./config/compton/compton.conf" "$HOME/.config/awesome-session/compton/compton.conf"
	echo "cp ./config/compton/compton.conf $HOME/.config/awesome-session/compton/compton.conf"


	compton_config_install_aw_compton
	compton_config_install_aw_compton_start


	compton_config_install_option_theme_file

	compton_config_install_theme_default
	compton_config_install_theme_basic


	compton_config_install_aw_compton_completion_bash
}


compton_config_install_aw_compton_start () {

	echo "install -m 755 ./config/compton/bin/aw-compton-start $HOME/bin/aw-compton-start"
	install -m 755 "./config/compton/bin/aw-compton-start" "$HOME/bin/aw-compton-start"


}

compton_config_install_aw_compton () {

	echo "install -m 755 ./config/compton/bin/aw-compton $HOME/bin/aw-compton"
	install -m 755 "./config/compton/bin/aw-compton" "$HOME/bin/aw-compton"

}

compton_config_install_aw_compton_completion_bash () {

	echo "install -m 755 ./config/compton/completion/bash/aw-compton /etc/bash_completion.d/aw-compton"
	sudo install -m 644 "./config/compton/completion/bash/aw-compton" "/etc/bash_completion.d/aw-compton"
}



compton_config_install_option_theme_file () {

	mkdir -p "$HOME/.config/awesome-session/compton/option"
	echo "mkdir -p $HOME/.config/awesome-session/compton/option"


	echo "echo 'default' > $HOME/.config/awesome-session/compton/option/theme"
	echo 'default' > "$HOME/.config/awesome-session/compton/option/theme"

}

compton_config_install_theme_default () {

	mkdir -p "$HOME/.config/awesome-session/compton/theme/default/config/on"
	echo "mkdir -p $HOME/.config/awesome-session/compton/theme/default/config/on"


	echo "install -m 664 ./config/compton/theme/default/config/on/compton.conf $HOME/.config/awesome-session/compton/theme/default/config/on/compton.conf"
	install -m 664 "./config/compton/theme/default/config/on/compton.conf" "$HOME/.config/awesome-session/compton/theme/default/config/on/compton.conf"

}


compton_config_install_theme_basic () {

	mkdir -p "$HOME/.config/awesome-session/compton/theme/basic/config/on"
	echo "mkdir -p $HOME/.config/awesome-session/compton/theme/basic/config/on"


	echo "install -m 664 ./config/compton/theme/basic/config/on/compton.conf $HOME/.config/awesome-session/compton/theme/basic/config/on/compton.conf"
	install -m 664 "./config/compton/theme/basic/config/on/compton.conf" "$HOME/.config/awesome-session/compton/theme/basic/config/on/compton.conf"

}
##
### Tail: compton
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

	awesome_config_install

	xresources_config_install

	wallpaper_config_install

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
