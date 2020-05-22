
################################################################################
### Head: DirTargetDir / Model / Routine / Random
##

wallpaper_sys_target_dir_random_select_num () {
	local start=1
	local end=$(wallpaper_sys_target_dir_list_count)

	util_random_range "$start" "$end"
}

wallpaper_sys_target_dir_random_select_name () {
	line=$(wallpaper_sys_target_dir_random_select_num)
	wallpaper_sys_get_target_dir_name_by_target_dir_num "$line"
}

wallpaper_sys_get_target_dir_name_by_target_dir_num () {
	local line="$1"
	wallpaper_sys_target_dir_list | awk "FNR == $line {print}"
}

##
### Tail: DirTargetDir / Model / Routine / Random
################################################################################

<?php
/*

## Reference


*/
?>
