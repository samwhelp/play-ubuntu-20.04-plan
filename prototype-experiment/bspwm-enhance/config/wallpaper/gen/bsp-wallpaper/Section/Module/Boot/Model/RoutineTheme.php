
################################################################################
### Head: Boot / Model / Routine / Theme
##

wallpaper_boot_util_start_v1 () {
	local config_dir_path="$1"
	local conf

	##for conf in "$config_dir_path"/*.conf ; do
	for conf in "$config_dir_path"/main.conf ; do
		#echo $conf
		feh --bg-scale $(cat "$conf") &
	done

}

wallpaper_boot_util_start_v2 () {
	local config_dir_path="$1"
	local conf

	##for conf in $(find "$config_dir_path" -name *.conf); do
	for conf in $(find "$config_dir_path" -name main.conf); do
		#echo $conf
		feh --bg-scale $(cat "$conf") &
	done

}

wallpaper_boot_theme_config_dir_path () {
	local theme_dir_path="$(wallpaper_boot_theme_dir_path)"
	local theme_config_dir_path="$theme_dir_path/config/on"

	if [ -d "$theme_config_dir_path" ] ; then
		echo "$theme_config_dir_path"
		return 0
	fi

	echo "$theme_dir_path"
	return 1

}

wallpaper_boot_theme_dir_path () {
	local theme_dir_path


	theme_dir_path="$(wallpaper_boot_theme_dir_path_find_by_option)"

	if [ -d "$theme_dir_path" ] ; then
		echo "$theme_dir_path"
		return 0
	fi


	theme_dir_path="$(wallpaper_boot_theme_dir_path_find_by_default)"

	if [ -d "$theme_dir_path" ] ; then
		echo "$theme_dir_path"
		return 0
	fi


	theme_dir_path="$HOME/.config/wallpaper"
	echo "$theme_dir_path"
	return 0

}

wallpaper_boot_theme_dir_path_find_by_option () {
	## ~/.config/bspwm/wallpaper/theme/some_theme
	wallpaper_boot_theme_dir_path_create $(wallpaper_boot_option_theme_get)
}

wallpaper_boot_theme_dir_path_find_by_default () {
	## ~/.config/bspwm/wallpaper/theme/default
	wallpaper_boot_theme_dir_path_create $(wallpaper_boot_option_theme_default)
}

wallpaper_boot_theme_dir_path_create () {
	local theme_name="$1"

	## ~/.config/bspwm/wallpaper/theme/theme_name
	echo "$HOME/.config/bspwm/wallpaper/theme/$theme_name"
}

wallpaper_boot_option_theme_default () {
	echo 'default'
}

wallpaper_boot_option_theme_get () {


	wallpaper_sys_option_theme_file_check

	## ~/.config/bspwm/wallpaper/option/theme
	cat "$HOME/.config/bspwm/wallpaper/option/theme"
}

##
### Tail: Boot / Model / Routine / Theme
################################################################################

<?php
/*

## Reference


*/
?>
