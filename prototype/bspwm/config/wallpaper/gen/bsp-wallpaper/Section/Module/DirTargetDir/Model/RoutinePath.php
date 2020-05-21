
################################################################################
### Head: DirTargetDir / Model / Routine / Path
##


wallpaper_sys_target_dir_path_valid () {

	local target_dir_path_to_set="$1"
	local target_dir_path_valid

	if [ -d "$target_dir_path_to_set" ] ; then
		target_dir_path_valid="$target_dir_path_to_set"
	else
		target_dir_path_valid='/usr/share/backgrounds'
	fi


	if [ "none${target_dir_path_valid}" = "none" ]; then
		target_dir_path_valid='/usr/share/backgrounds'
	fi

	echo "$target_dir_path_valid"

}



wallpaper_sys_option_target_dir_path_file_check () {

	if ! [ -e "$HOME/.config/bspwm/wallpaper/option/target_dir_path" ] ; then
		mkdir -p "$HOME/.config/bspwm/wallpaper/option"
		echo '/usr/share/backgrounds' > "$HOME/.config/bspwm/wallpaper/option/target_dir_path"
	fi

}

wallpaper_sys_target_dir_path_name_get () {

	wallpaper_sys_option_target_dir_path_file_check

	cat "$HOME/.config/bspwm/wallpaper/option/target_dir_path"
}

wallpaper_sys_target_dir_path_name_set () {

	wallpaper_sys_option_target_dir_path_file_check

	echo "$1" > "$HOME/.config/bspwm/wallpaper/option/target_dir_path"
}


wallpaper_sys_target_dir_path_name_get_valid () {
	##echo wallpaper_sys_target_dir_path_name_get_valid

	local target_dir_path="$(wallpaper_sys_target_dir_path_name_get)"

	target_dir_path="$(wallpaper_sys_target_dir_path_valid $target_dir_path)"


	echo "$target_dir_path"
}

wallpaper_sys_target_dir_path_name_set_valid () {
	##echo wallpaper_sys_target_dir_path_name_set_valid

	local target_dir_path="$1"

	target_dir_path="$(wallpaper_sys_target_dir_path_valid $target_dir_path)"

	wallpaper_sys_target_dir_path_name_set "$target_dir_path"

	echo "$target_dir_path"
}


##
### Tail: DirTargetDir / Model / Routine / Path
################################################################################

<?php
/*

## Reference


*/
?>
