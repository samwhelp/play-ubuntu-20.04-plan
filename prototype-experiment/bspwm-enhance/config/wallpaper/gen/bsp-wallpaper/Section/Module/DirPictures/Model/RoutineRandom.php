
################################################################################
### Head: DirPictures / Model / Routine / Random
##

wallpaper_sys_pictures_random_select_num () {
	local start=1
	local end=$(wallpaper_sys_pictures_list_count)

	util_random_range "$start" "$end"
}

wallpaper_sys_pictures_random_select_name () {
	line=$(wallpaper_sys_pictures_random_select_num)
	wallpaper_sys_get_pictures_name_by_pictures_num "$line"
}


wallpaper_sys_get_pictures_name_by_pictures_num () {
	local line="$1"
	wallpaper_sys_pictures_list | awk "FNR == $line {print}"
}

##
### Tail: DirPictures / Model / Routine / Random
################################################################################

<?php
/*

## Reference


*/
?>
