
################################################################################
### Head: DirBackgrounds / Model / Subject
##

wallpaper_run_backgrounds_list () {

	wallpaper_sys_backgrounds_list
}

wallpaper_run_backgrounds_use () {

	wallpaper_sys_backgrounds_use $@

}

wallpaper_run_backgrounds_view () {

	wallpaper_sys_backgrounds_view $@

}

wallpaper_run_backgrounds_open_dir () {

	wallpaper_sys_backgrounds_open_dir

}

wallpaper_run_backgrounds_next () {

	local img_file_name="$(wallpaper_sys_backgrounds_next_select_name)"

	echo $img_file_name

	wallpaper_sys_backgrounds_use "$img_file_name"

}

wallpaper_run_backgrounds_random () {


	local img_file_name="$(wallpaper_sys_backgrounds_random_select_name)"

	echo $img_file_name

	wallpaper_sys_backgrounds_use "$img_file_name"


}

##
### Tail: DirBackgrounds / Model / Subject
################################################################################

<?php
/*

## Reference


*/
?>
