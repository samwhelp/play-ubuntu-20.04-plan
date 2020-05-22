
################################################################################
### Head: DirTargetDir / Model / Subject
##

wallpaper_run_target_dir_path () {

	local target_dir_path="$1"

	if [ "none${target_dir_path}" = "none" ]; then
		wallpaper_sys_target_dir_path_name_get_valid
		return
	fi

	wallpaper_sys_target_dir_path_name_set_valid "$target_dir_path"

}


wallpaper_run_target_dir_list () {

	wallpaper_sys_target_dir_list
}

wallpaper_run_target_dir_use () {

	wallpaper_sys_target_dir_use $@

}

wallpaper_run_target_dir_view () {

	wallpaper_sys_target_dir_view $@

}

wallpaper_run_target_dir_open_dir () {

	wallpaper_sys_target_dir_open_dir
}

wallpaper_run_target_dir_next () {

	local img_file_name="$(wallpaper_sys_target_dir_next_select_name)"

	echo $img_file_name

	wallpaper_sys_target_dir_use "$img_file_name"

}

wallpaper_run_target_dir_random () {


	local img_file_name="$(wallpaper_sys_target_dir_random_select_name)"

	echo $img_file_name

	wallpaper_sys_target_dir_use "$img_file_name"


}

wallpaper_run_target_dir_fixed () {


	local img_file_name="$(wallpaper_sys_target_dir_fixed_select_name)"

	echo $img_file_name

	wallpaper_sys_target_dir_use "$img_file_name"


}

wallpaper_run_target_dir_recent () {

	##wallpaper_sys_run_check_fehbg_first && wallpaper_run_target_dir_fixed

	wallpaper_sys_run_check_fehbg

	wallpaper_run_target_dir_fixed


}

##
### Tail: DirTargetDir / Model / Subject
################################################################################

<?php
/*

## Reference


*/
?>
