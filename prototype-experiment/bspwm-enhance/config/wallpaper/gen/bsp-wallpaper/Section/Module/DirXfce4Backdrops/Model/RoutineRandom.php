
################################################################################
### Head: DirXfce4Backdrops / Model / Routine / Random
##

wallpaper_sys_xfce4_backdrops_random_select_num () {
	local start=1
	local end=$(wallpaper_sys_xfce4_backdrops_list_count)

	util_random_range "$start" "$end"
}

wallpaper_sys_xfce4_backdrops_random_select_name () {
	line=$(wallpaper_sys_xfce4_backdrops_random_select_num)
	wallpaper_sys_get_xfce4_backdrops_name_by_xfce4_backdrops_num "$line"
}


wallpaper_sys_get_xfce4_backdrops_name_by_xfce4_backdrops_num () {
	local line="$1"
	wallpaper_sys_xfce4_backdrops_list | awk "FNR == $line {print}"
}


##
### Tail: DirXfce4Backdrops / Model / Routine / Random
################################################################################

<?php
/*

## Reference


*/
?>
