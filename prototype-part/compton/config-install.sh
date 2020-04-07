#!/usr/bin/env bash

set -e


################################################################################
### Head: compton
##
compton_config_install () {

	## $ dpkg -L compton | grep conf
	## /usr/share/doc/compton/examples/compton.sample.conf
	## cp $(dpkg -L compton | grep conf) ~/.config/compton.conf

	cp "./config/compton/compton.conf" "$HOME/.config/compton.conf"
	echo "cp ./config/compton/compton.conf $HOME/.config/compton.conf"

}
##
### Tail: compton
################################################################################


################################################################################
### Head: main
##
main_config_install () {

	compton_config_install

}
## start
main_config_install

##
### Tail: main
################################################################################
