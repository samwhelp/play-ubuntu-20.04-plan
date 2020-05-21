
################################################################################
### Head: DirPictures / Model / Subject
##

wallpaper_run_pictures_list () {

	wallpaper_sys_pictures_list
}

wallpaper_run_pictures_use () {

	wallpaper_sys_pictures_use $@

}

wallpaper_run_pictures_view () {

	wallpaper_sys_pictures_view $@

}

wallpaper_run_pictures_open_dir () {

	wallpaper_sys_pictures_open_dir
}

wallpaper_run_pictures_next () {

	local img_file_name="$(wallpaper_sys_pictures_next_select_name)"

	echo $img_file_name

	wallpaper_sys_pictures_use "$img_file_name"

}

wallpaper_run_pictures_random () {


	local img_file_name="$(wallpaper_sys_pictures_random_select_name)"

	echo $img_file_name

	wallpaper_sys_pictures_use "$img_file_name"


}

##
### Tail: DirPictures / Model / Subject
################################################################################

<?php
/*

## Reference


*/
?>
