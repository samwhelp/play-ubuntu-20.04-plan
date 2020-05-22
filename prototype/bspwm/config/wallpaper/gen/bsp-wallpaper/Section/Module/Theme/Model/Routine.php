
################################################################################
### Head: Theme / Model / Routine
##


wallpaper_sys_theme_list_v2 () {

	cd "$HOME/.config/bspwm/wallpaper/theme/"
	ls -1 | sort
	cd "$OLDPWD"

}


wallpaper_sys_theme_list () {

	ls -1 "$HOME/.config/bspwm/wallpaper/theme/"

}

wallpaper_sys_theme_list_count () {

	wallpaper_sys_theme_list | wc -l

}


wallpaper_sys_theme_use () {

	local img_file_name="$@"

	if [ "none${img_file_name}" = "none" ]; then
		echo 'Need {img_file_name}'
		return
	fi

	local target_dir_path="$(wallpaper_sys_theme_path_name_get_valid)"
	local img_file_path="${target_dir_path}/${img_file_name}"

	if ! [ -f "$img_file_path" ]; then
		echo "File_Not_Exists: ${img_file_path}"
		return 1
	fi

	wallpaper_sys_theme_use_name_set "$img_file_name"

	wallpaper_sys_use "$img_file_path"
}

wallpaper_sys_theme_view () {

	local img_file_name="$@"

	if [ "none${img_file_name}" = "none" ]; then
		echo 'Need {img_file_name}'
		return
	fi

	local target_dir_path="$(wallpaper_sys_theme_path_name_get_valid)"
	local img_file_path="${target_dir_path}/${img_file_name}"

	if ! [ -f "$img_file_path" ]; then
		echo "File_Not_Exists: ${img_file_path}"
		return 1
	fi

	wallpaper_sys_view "$img_file_path"
}



wallpaper_sys_get_theme_name_by_theme_num () {
	## * https://stackoverflow.com/questions/1506521/select-row-and-element-in-awk

	local line="$1"
	wallpaper_sys_theme_list | awk "FNR == $line {print}"
}


wallpaper_sys_option_theme_file_check () {

	if ! [ -e "$HOME/.config/bspwm/wallpaper/option/theme" ] ; then
		mkdir -p "$HOME/.config/bspwm/wallpaper/option"
		echo 'default' > "$HOME/.config/bspwm/wallpaper/option/theme"
	fi

}

wallpaper_sys_theme_use_name_get () {

	wallpaper_sys_option_theme_file_check

	cat "$HOME/.config/bspwm/wallpaper/option/theme"
}

wallpaper_sys_theme_use_name_set () {

	wallpaper_sys_option_theme_file_check

	echo "$1" > "$HOME/.config/bspwm/wallpaper/option/theme"
}


##
### Tail: Theme / Model / Routine
################################################################################

<?php
/*

## Reference


*/
?>
