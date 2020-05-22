
################################################################################
### Head: Core / Model / Routine / Fehbg
##

wallpaper_sys_run_check_fehbg () {

	local load_last="$HOME/.fehbg"

	if [ -x "$HOME/.fehbg" ]; then
		##echo 1
		$load_last
		exit 0
	fi

	##echo 2

}

wallpaper_sys_run_check_fehbg_first () {

	local load_last="$HOME/.fehbg"

	if [ -x "$HOME/.fehbg" ]; then
		##echo 1
		$load_last
		return 1
	fi

	##echo 2

	return 0
}


wallpaper_sys_use_check_fehbg () {
	wallpaper_sys_run_check_fehbg

	local img_file_path="$1"
	wallpaper_sys_use "$img_file_path"
}


wallpaper_sys_use_check_fehbg_first () {

	local img_file_path="$1"

	wallpaper_sys_run_check_fehbg_first && wallpaper_sys_use "$img_file_path"

}

wallpaper_sys_use_check_fehbg_first_v2 () {

	local img_file_path="$1"

	if wallpaper_sys_run_check_fehbg_first; then
		wallpaper_sys_use "$img_file_path"
	fi
}

wallpaper_sys_use_check_fehbg_first_v3 () {

	local img_file_path="$1"

	if ! wallpaper_sys_run_check_fehbg_first; then
		return 1
	fi

	wallpaper_sys_use "$img_file_path"
}



##
### Tail: Core / Model / Routine / Fehbg
################################################################################

<?php
/*

## Reference


*/
?>
