
################################################################################
### Head: DirPictures / Model / Routine
##

wallpaper_sys_pictures_list () {
	local target_dir_path="$(wallpaper_sys_pictures_path_name_get_valid)"
	mkdir -p "$target_dir_path"
	cd "$target_dir_path"
	##ls -1 {*.jpg,*.png}
	##ls -1 | grep -E -o '.*(\.png|\.jpg|\.jpeg|\.svg)'
	ls -1 | grep -E -o '.*(\.png|\.jpg|\.jpeg)'
	cd "$OLDPWD"
}

wallpaper_sys_pictures_list_count () {
	wallpaper_sys_pictures_list | wc -l
}

wallpaper_sys_pictures_use () {
	local target_dir_path="$(wallpaper_sys_pictures_path_name_get_valid)"
	local img_file_name="$@"
	local img_file_path="${target_dir_path}/${img_file_name}"
	if ! [ -f "$img_file_path" ]; then
		echo "File_Not_Exists: ${img_file_path}"
		return 1
	fi

	wallpaper_sys_pictures_use_name_set "$img_file_name"

	wallpaper_sys_use "$img_file_path"
}

wallpaper_sys_pictures_view () {
	local target_dir_path="$(wallpaper_sys_pictures_path_name_get_valid)"
	local img_file_name="$@"
	local img_file_path="${target_dir_path}/${img_file_name}"
	if ! [ -f "$img_file_path" ]; then
		echo "File_Not_Exists: ${img_file_path}"
		return 1
	fi

	wallpaper_sys_view "$img_file_path"
}

wallpaper_sys_pictures_open_dir () {

	local target_dir_path="$(wallpaper_sys_pictures_path_name_get_valid)"

	util_open_dir "$target_dir_path"
}




wallpaper_sys_option_pictures_file_check () {

	if ! [ -e "$HOME/.config/bspwm/wallpaper/option/dir_pictures/use" ] ; then
		mkdir -p "$HOME/.config/bspwm/wallpaper/option/dir_pictures"
		echo 'wallpaper.jpg' > "$HOME/.config/bspwm/wallpaper/option/dir_pictures/use"
	fi

}

wallpaper_sys_pictures_use_name_get () {

	wallpaper_sys_option_pictures_file_check

	cat "$HOME/.config/bspwm/wallpaper/option/dir_pictures/use"
}

wallpaper_sys_pictures_use_name_set () {

	wallpaper_sys_option_pictures_file_check

	echo "$1" > "$HOME/.config/bspwm/wallpaper/option/dir_pictures/use"
}




##
### Tail: DirPictures / Model / Routine
################################################################################

<?php
/*

## Reference


*/
?>
