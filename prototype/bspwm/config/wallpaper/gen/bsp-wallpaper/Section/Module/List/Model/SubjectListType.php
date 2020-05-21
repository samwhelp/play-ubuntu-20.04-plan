
################################################################################
### Head: List / Model / Subject / ListType
##

wallpaper_run_list_type_enum () {

	wallpaper_sys_list_type_enum

}


wallpaper_run_list_type () {

	local list_type="$1"

	if [ "none${list_type}" = "none" ]; then
		wallpaper_sys_list_type_name_get_valid
		return
	fi

	wallpaper_sys_list_type_name_set_valid "$list_type"

}


##
### Tail: List / Model / Subject / ListType
################################################################################

<?php
/*

## Reference


*/
?>
