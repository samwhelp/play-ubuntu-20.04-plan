#!/usr/bin/env bash

##set -e


################################################################################
### Head: awesome
##
awesome_build_install () {

	awesome_build_install_prepare_dir

	awesome_build_install_package_build_essential
	
	awesome_build_install_clone
	
	awesome_build_install_build

}

awesome_build_install_prepare_dir () {

	mkdir -p var

}

awesome_build_install_package_build_essential () {

	##
	## https://github.com/awesomeWM/awesome
	##

local package_list='
	build-essential
	libxcb-xfixes0-dev
'

	sudo apt-get install $package_list
	sudo apt-get build-dep awesome

}


awesome_build_install_clone () {

	
	git clone 'https://github.com/awesomeWM/awesome.git' 'var/awesome'


}

awesome_build_install_build () {

	
	cd var/awesome
	
	#make
	
	make package
	
	sudo dpkg -i build/*.deb
}

##
### Tail: awesome
################################################################################


################################################################################
### Head: main
##
main_build_install () {

	awesome_build_install

}

main_build_install
##
### Tail: main
################################################################################
