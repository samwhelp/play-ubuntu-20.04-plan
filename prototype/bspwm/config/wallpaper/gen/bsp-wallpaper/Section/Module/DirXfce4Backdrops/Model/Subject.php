
################################################################################
### Head: DirXfce4Backdrops / Model / Subject
##

wallpaper_run_xfce4_backdrops_path () {

	wallpaper_sys_xfce4_backdrops_path_name_get_valid

}

wallpaper_run_xfce4_backdrops_list () {

	wallpaper_sys_xfce4_backdrops_list
}

wallpaper_run_xfce4_backdrops_use () {

	wallpaper_sys_xfce4_backdrops_use $@

}

wallpaper_run_xfce4_backdrops_view () {

	wallpaper_sys_xfce4_backdrops_view $@

}

wallpaper_run_xfce4_backdrops_open_dir () {

	wallpaper_sys_xfce4_backdrops_open_dir
}

wallpaper_run_xfce4_backdrops_next () {

	local img_file_name="$(wallpaper_sys_xfce4_backdrops_next_select_name)"

	echo $img_file_name

	wallpaper_sys_xfce4_backdrops_use "$img_file_name"

}

wallpaper_run_xfce4_backdrops_random () {


	local img_file_name="$(wallpaper_sys_xfce4_backdrops_random_select_name)"

	echo $img_file_name

	wallpaper_sys_xfce4_backdrops_use "$img_file_name"


}

wallpaper_run_xfce4_backdrops_fixed () {


	local img_file_name="$(wallpaper_sys_xfce4_backdrops_fixed_select_name)"

	echo $img_file_name

	wallpaper_sys_xfce4_backdrops_use "$img_file_name"


}

wallpaper_run_xfce4_backdrops_recent () {

	##wallpaper_sys_run_check_fehbg_first && wallpaper_run_xfce4_backdrops_fixed

	wallpaper_sys_run_check_fehbg

	wallpaper_run_xfce4_backdrops_fixed


}

##
### Tail: DirXfce4Backdrops / Model / Subject
################################################################################

<?php
/*

## Reference


*/
?>
