#!/usr/bin/env bash

##set -e


################################################################################
### Head: windowchef
##
windowchef_build_install () {

	windowchef_build_install_prepare_dir

	windowchef_build_install_package_build_essential
	
	windowchef_build_install_clone
	
	windowchef_build_install_build
	
	windowchef_build_install_put_xsession

}

windowchef_build_install_prepare_dir () {

	mkdir -p var

}

windowchef_build_install_package_build_essential () {

	##
	## https://berrywm.org/installation.html
	## https://github.com/tudurom/windowchef
	##

local package_list='
	build-essential
	libxcb1-dev
	libxcb-randr0-dev
	libxcb-util-dev
	libxcb-keysyms1-dev
	libxcb-ewmh-dev
	libxcb-icccm4-dev
'

	sudo apt-get install $package_list

}


windowchef_build_install_clone () {

	
	git clone https://github.com/tudurom/windowchef.git var/windowchef


}

windowchef_build_install_build () {

	
	cd var/windowchef
	
	make
	
	sudo make install


}


windowchef_build_install_put_xsession () {

	
	sudo install -m 644 /usr/local/share/xsessions/windowchef.desktop /usr/share/xsessions/windowchef.desktop


}





##
### Tail: windowchef
################################################################################


################################################################################
### Head: main
##
main_build_install () {

	windowchef_build_install

}

main_build_install
##
### Tail: main
################################################################################
