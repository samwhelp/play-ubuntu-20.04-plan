
################################################################################
### Head: DirBackgrounds / Model / Routine / Path
##

wallpaper_sys_backgrounds_path_valid () {

	local target_dir_path_to_set="$1"
	local target_dir_path_valid

	if [ -d "$target_dir_path_to_set" ] ; then
		target_dir_path_valid="$target_dir_path_to_set"
	else
		target_dir_path_valid="$HOME/Pictures"
	fi


	if [ "none${target_dir_path_valid}" = "none" ]; then
		target_dir_path_valid="$HOME/Pictures"
	fi

	echo "$target_dir_path_valid"

}

wallpaper_sys_backgrounds_path_name_get () {
	echo '/usr/share/backgrounds'
}

wallpaper_sys_backgrounds_path_name_get_valid () {

	local target_dir_path="$(wallpaper_sys_backgrounds_path_name_get)"

	target_dir_path="$(wallpaper_sys_target_dir_path_valid $target_dir_path)"

	echo "$target_dir_path"
}



##
### Tail: DirBackgrounds / Model / Routine / Path
################################################################################

<?php
/*

## Reference


*/
?>
