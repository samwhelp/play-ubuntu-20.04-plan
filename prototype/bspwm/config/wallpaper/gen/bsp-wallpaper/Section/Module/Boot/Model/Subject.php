
################################################################################
### Head: Boot / Model / Subject
##

wallpaper_run_boot () {
	local args="$@"

	local boot_type=$(wallpaper_sys_boot_type_name_get_valid)

	local function_name=$(wallpaper_sys_run_boot_find_function_name "$boot_type")

	##echo $function_name
	# if ! command -v $function_name > /dev/null; then
	if ! type -p $function_name > /dev/null; then
		##util_debug_echo "[Debug] wallpaper_run_boot_sub_not_exist: boot_type=$boot_type; function_name=$function_name"

		wallpaper_run_boot_sub_default "$args"
		return 0
	fi

	"$function_name" "$args" ## run sub function

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
