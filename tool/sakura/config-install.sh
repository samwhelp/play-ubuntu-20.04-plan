#!/usr/bin/env bash

set -e


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
### Head: main
##
main_config_install () {

	sakura_config_install

}
## start
main_config_install

##
### Tail: main
################################################################################
