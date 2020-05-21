
################################################################################
### Head: DirBackgrounds / Model / Routine / Path
##

wallpaper_sys_backgrounds_path_valid () {

	local backgrounds_path_to_set="$1"
	local backgrounds_path_valid

	if [ -d "$backgrounds_path_to_set" ] ; then
		backgrounds_path_valid="$backgrounds_path_to_set"
	else
		backgrounds_path_valid="$HOME/Pictures"
	fi


	if [ "none${backgrounds_path_valid}" = "none" ]; then
		backgrounds_path_valid="$HOME/Pictures"
	fi

	echo "$backgrounds_path_valid"

}

wallpaper_sys_backgrounds_path_name_get () {
	echo '/usr/share/backgrounds'
}

wallpaper_sys_backgrounds_path_name_get_valid () {

	local backgrounds_path="$(wallpaper_sys_backgrounds_path_name_get)"

	backgrounds_path="$(wallpaper_sys_backgrounds_path_valid $backgrounds_path)"

	echo "$backgrounds_path"
}



##
### Tail: DirBackgrounds / Model / Routine / Path
################################################################################

<?php
/*

## Reference


*/
?>
