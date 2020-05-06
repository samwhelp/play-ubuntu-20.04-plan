#!/usr/bin/env bash


################################################################################
### Head: awesome
##
awesome_config_install () {

	#echo "mkdir -p $HOME/.config/awesome"
	#mkdir -p "$HOME/.config/awesome"

	echo "mkdir -p $HOME/.config/awesome-session"
	mkdir -p "$HOME/.config/awesome-session"

	

	awesome_config_install_check_target_exists && awesome_config_install_copy_config_dir
	


}

awesome_config_install_copy_config_dir() {

	##echo "rm -rf $HOME/.config/awesome"
	##rm -rf "$HOME/.config/awesome"
	
	cd ".."
		
	echo "cp ./start $HOME/.config/awesome -a"
	cp "./start" "$HOME/.config/awesome" -a
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

##
### Tail: awesome
################################################################################


################################################################################
### Head: main
##
main_config_install () {

	awesome_config_install

}
## start
main_config_install

##
### Tail: main
################################################################################
