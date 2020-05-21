
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

wallpaper_sys_theme_name_get () {

	wallpaper_sys_option_theme_file_check

	cat "$HOME/.config/bspwm/wallpaper/option/theme"
}

wallpaper_sys_theme_name_set () {

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
