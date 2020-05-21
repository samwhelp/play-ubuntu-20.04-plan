
################################################################################
### Head: Boot / Model / Subject / BootType
##

wallpaper_run_boot_type_enum () {

	wallpaper_sys_boot_type_enum

}


wallpaper_run_boot_type () {

	local boot_type="$1"

	if [ "none${boot_type}" = "none" ]; then
		wallpaper_sys_boot_type_name_get_valid
		return
	fi

	wallpaper_sys_boot_type_name_set_valid "$boot_type"

}

##
### Tail: Boot / Model / Subject / BootType
################################################################################

<?php
/*

## Reference


*/
?>
