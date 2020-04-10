#!/usr/bin/env bash

set -e


################################################################################
### Head: theme
##
theme_config_install () {

	theme_config_install_wm_theme
	theme_config_install_ui_theme
	theme_config_install_icon_theme

}

theme_config_install_wm_theme () {

	## ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml
	## <property name="theme" type="string" value="Numix"/>

	echo "xfconf-query -c 'xfwm4' -p '/general/theme' -s 'Numix'"
	xfconf-query -c 'xfwm4' -p '/general/theme' -s 'Numix'

}

theme_config_install_ui_theme () {

	## ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
	## <property name="ThemeName" type="string" value="Yaru-dark"/>

	echo "xfconf-query -c 'xsettings' -p '/Net/ThemeName' -s 'Yaru-dark'"
	xfconf-query -c 'xsettings' -p '/Net/ThemeName' -s 'Yaru-dark'

}

theme_config_install_icon_theme () {

	## ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
	## <property name="IconThemeName" type="string" value="Yaru"/>

	echo "xfconf-query -c 'xsettings' -p '/Net/IconThemeName' -s 'Yaru'"
	xfconf-query -c 'xsettings' -p '/Net/IconThemeName' -s 'Yaru'

}

##
### Tail: theme
################################################################################


################################################################################
### Head: main
##
main_config_install () {

	theme_config_install


}
## start
main_config_install

##
### Tail: main
################################################################################
