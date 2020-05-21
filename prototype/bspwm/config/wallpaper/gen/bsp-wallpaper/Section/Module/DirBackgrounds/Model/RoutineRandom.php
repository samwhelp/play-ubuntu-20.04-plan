
################################################################################
### Head: DirBackgrounds / Model / Routine / Random
##

wallpaper_sys_backgrounds_random_select_num () {
	local start=1
	local end=$(wallpaper_sys_backgrounds_list_count)

	util_random_range "$start" "$end"
}

wallpaper_sys_backgrounds_random_select_name () {
	line=$(wallpaper_sys_backgrounds_random_select_num)
	wallpaper_sys_get_backgrounds_name_by_backgrounds_num "$line"
}

wallpaper_sys_get_backgrounds_name_by_backgrounds_num () {
	local line="$1"
	wallpaper_sys_backgrounds_list | awk "FNR == $line {print}"
}

##
### Tail: DirBackgrounds / Model / Routine / Random
################################################################################

<?php
/*

## Reference


*/
?>
