
################################################################################
### Head: Theme / Model / Routine / Random
##

wallpaper_sys_theme_random_select_num () {
	local start=1
	local end=$(wallpaper_sys_theme_list_count)

	util_random_range "$start" "$end"
}


wallpaper_sys_theme_random_select_name () {
	line=$(wallpaper_sys_theme_random_select_num)
	wallpaper_sys_get_theme_name_by_theme_num "$line"
}


##
### Tail: Theme / Model / Routine / Random
################################################################################

<?php
/*

## Reference


*/
?>
