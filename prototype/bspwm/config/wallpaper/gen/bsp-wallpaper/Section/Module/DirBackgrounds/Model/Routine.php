
################################################################################
### Head: DirBackgrounds / Model / Routine
##

wallpaper_sys_backgrounds_list () {
	cd "/usr/share/backgrounds/"
	##ls -1 {*.jpg,*.png}
	## https://stackoverflow.com/questions/48633997/grep-for-image-urls
	## egrep -o 'src=".*(\.png|\.jpg)' index.html
	## grep -E -o 'src=".*(\.png|\.jpg)' index.html
	##ls -1 | grep -E -o '.*(\.png|\.jpg|\.jpeg|\.svg)'
	ls -1 | grep -E -o '.*(\.png|\.jpg|\.jpeg)'
	cd "$OLDPWD"
}

wallpaper_sys_backgrounds_list_count () {
	wallpaper_sys_backgrounds_list | wc -l
}

wallpaper_sys_backgrounds_use () {
	local img_file_name="$@"
	local img_file_path="/usr/share/backgrounds/${img_file_name}"
	if ! [ -f "$img_file_path" ]; then
		echo "File_Not_Exists: ${img_file_path}"
		return 1
	fi

	wallpaper_sys_backgrounds_use_name_set "$img_file_name"

	wallpaper_sys_use "$img_file_path"
}


wallpaper_sys_backgrounds_view () {
	local img_file_name="$@"
	local img_file_path="/usr/share/backgrounds/${img_file_name}"
	if ! [ -f "$img_file_path" ]; then
		echo "File_Not_Exists: ${img_file_path}"
		return 1
	fi

	wallpaper_sys_view "$img_file_path"
}


wallpaper_sys_backgrounds_open_dir () {

	local target_dir_path="$HOME/Pictures/Wallpaper/"

	util_open_dir "$target_dir_path"
}


wallpaper_sys_option_backgrounds_file_check () {

	if ! [ -e "$HOME/.config/bspwm/wallpaper/option/dir_backgrounds/use" ] ; then
		mkdir -p "$HOME/.config/bspwm/wallpaper/option/dir_backgrounds"
		echo 'Frozen_sunset_on_the_lake_by_Manuel_Arslanyan.jpg' > "$HOME/.config/bspwm/wallpaper/option/dir_backgrounds/use"
	fi

}

wallpaper_sys_backgrounds_use_name_get () {

	wallpaper_sys_option_backgrounds_file_check

	cat "$HOME/.config/bspwm/wallpaper/option/dir_backgrounds/use"
}

wallpaper_sys_backgrounds_use_name_set () {

	wallpaper_sys_option_backgrounds_file_check

	echo "$1" > "$HOME/.config/bspwm/wallpaper/option/dir_backgrounds/use"
}

##
### Tail: DirBackgrounds / Model / Routine
################################################################################

<?php
/*

## Reference


*/
?>
