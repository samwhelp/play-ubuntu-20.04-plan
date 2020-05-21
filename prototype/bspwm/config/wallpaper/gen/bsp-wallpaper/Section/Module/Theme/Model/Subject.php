
################################################################################
### Head: Theme / Model / Subject
##

wallpaper_run_theme_list () {

	wallpaper_sys_theme_list

}

wallpaper_run_theme_next () {

	local theme="$(wallpaper_sys_theme_next_select_name)"

	echo $theme

	wallpaper_sys_theme_name_set "$theme"

	wallpaper_sys_session_restart

}

wallpaper_run_theme_random () {


	local theme="$(wallpaper_sys_theme_random_select_name)"

	echo $theme

	wallpaper_sys_theme_name_set "$theme"

	wallpaper_sys_session_restart


}

##
### Tail: Theme / Model / Subject
################################################################################

<?php
/*

## Reference


*/
?>
