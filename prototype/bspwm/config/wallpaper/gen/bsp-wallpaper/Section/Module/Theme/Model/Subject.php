
################################################################################
### Head: Theme / Model / Subject
##

wallpaper_run_theme_list () {

	wallpaper_sys_theme_list

}

wallpaper_run_theme_next () {

	local theme="$(wallpaper_sys_theme_next_select_name)"

	echo $theme

	wallpaper_sys_theme_use_name_set "$theme"

	wallpaper_sys_session_restart

}

wallpaper_run_theme_random () {


	local theme="$(wallpaper_sys_theme_random_select_name)"

	echo $theme

	wallpaper_sys_theme_use_name_set "$theme"

	wallpaper_sys_session_restart


}

wallpaper_run_theme_fixed () {


	local img_file_name="$(wallpaper_sys_theme_fixed_select_name)"

	echo $img_file_name

	wallpaper_sys_theme_use "$img_file_name"


}

wallpaper_run_theme_recent () {

	##wallpaper_sys_run_check_fehbg_first && wallpaper_run_theme_fixed

	wallpaper_sys_run_check_fehbg

	wallpaper_run_theme_fixed


}


##
### Tail: Theme / Model / Subject
################################################################################

<?php
/*

## Reference


*/
?>
