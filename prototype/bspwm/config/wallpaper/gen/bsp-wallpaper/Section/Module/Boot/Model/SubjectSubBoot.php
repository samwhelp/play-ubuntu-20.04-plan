
################################################################################
### Head: List / Model / Subject / Next / Sub
##

wallpaper_run_boot_sub_default () {
	##util_debug_echo 'wallpaper_run_boot_sub_default'
	##wallpaper_run_backgrounds_boot

	wallpaper_boot_by_check_fehbg
}

wallpaper_run_boot_sub_off () {
	util_debug_echo 'wallpaper_run_boot_sub_off'
	echo 'off'
	exit 0;
}

wallpaper_run_boot_sub_recent () {
	util_debug_echo 'wallpaper_run_boot_sub_recent'
	wallpaper_run_recent
}

wallpaper_run_boot_sub_fixed () {
	util_debug_echo 'wallpaper_run_boot_sub_fixed'
	wallpaper_run_fixed
}

wallpaper_run_boot_sub_next () {
	util_debug_echo 'wallpaper_run_boot_sub_next'
	wallpaper_run_next
}

wallpaper_run_boot_sub_random () {
	util_debug_echo 'wallpaper_run_boot_sub_random'
	wallpaper_run_random
}



##
### Tail: List / Model / Subject / Next / Sub
################################################################################

<?php
/*

## Reference


*/
?>
