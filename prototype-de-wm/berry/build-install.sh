#!/usr/bin/env bash

##set -e


################################################################################
### Head: berry
##
berry_build_install () {

	berry_build_install_prepare_dir

	berry_build_install_package_build_essential
	
	berry_build_install_clone
	
	berry_build_install_build

}

berry_build_install_prepare_dir () {

	mkdir -p var

}

berry_build_install_package_build_essential () {

	##
	## https://berrywm.org/installation.html
	## https://github.com/JLErvin/berry
	##

local package_list='
	build-essential
	libx11-dev
	libxft-dev
	libxinerama-dev
'

	sudo apt-get install $package_list

}


berry_build_install_clone () {

	
	git clone https://github.com/JLErvin/berry.git var/berry


}

berry_build_install_build () {

	
	cd var/berry
	
	make
	
	sudo make install


}

##
### Tail: berry
################################################################################


################################################################################
### Head: main
##
main_build_install () {

	berry_build_install

}

main_build_install
##
### Tail: main
################################################################################
