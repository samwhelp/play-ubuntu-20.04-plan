
################################################################################
### Head: Boot / Model / Subject
##

wallpaper_run_boot () {
	wallpaper_boot_by_check_fehbg
}


wallpaper_boot_simple () {
	feh --bg-scale $(cat "$HOME/.config/bspwm/wallpaper/wallpaper-fallback.conf") &
}

wallpaper_boot_theme_default () {

	local config_dir_path="$HOME/.config/bspwm/wallpaper/theme/default/config/on"

	wallpaper_boot_util_start_v1 "$config_dir_path"
	##wallpaper_boot_util_start_v2 "$config_dir_path"

}

wallpaper_boot_by_check_fehbg () {

	local load_last="$HOME/.fehbg"

	if [ -x "$HOME/.fehbg" ]; then
		##echo 1
		$load_last
		return 0
	fi

	##echo 2

	wallpaper_boot_by_option
}

wallpaper_boot_by_option () {
	local config_dir_path


	config_dir_path="$(wallpaper_boot_theme_config_dir_path)"
	config_dir_path_check_exist="$?"

	if [ "$config_dir_path_check_exist" = "1" ]  ; then
		## not exists
		wallpaper_boot_simple
		return 0;
	fi


	wallpaper_boot_util_start_v1 "$config_dir_path"
	##wallpaper_boot_util_start_v2 "$config_dir_path"

}

##
### Tail: Boot / Model / Subject
################################################################################

<?php
/*

## Reference


*/
?>
