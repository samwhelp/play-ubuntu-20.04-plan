
################################################################################
### Head: DirXfce4Backdrops / Model / Routine
##


wallpaper_sys_xfce4_backdrops_list () {
	mkdir -p "/usr/share/xfce4/backdrops/"
	cd "/usr/share/xfce4/backdrops/"
	##ls -1 {*.jpg,*.png}
	##ls -1 | grep -E -o '.*(\.png|\.jpg|\.jpeg|\.svg)'
	ls -1 | grep -E -o '.*(\.png|\.jpg|\.jpeg)'
	cd "$OLDPWD"
}

wallpaper_sys_xfce4_backdrops_list_count () {
	wallpaper_sys_xfce4_backdrops_list | wc -l
}

wallpaper_sys_xfce4_backdrops_use () {
	local img_file_name="$@"
	local img_file_path="/usr/share/xfce4/backdrops/${img_file_name}"
	if ! [ -f "$img_file_path" ]; then
		echo "File_Not_Exists: ${img_file_path}"
		return 1
	fi

	wallpaper_sys_xfce4_backdrops_use_name_set "$img_file_name"

	wallpaper_sys_use "$img_file_path"
}

wallpaper_sys_xfce4_backdrops_view () {
	local img_file_name="$@"
	local img_file_path="/usr/share/xfce4/backdrops/${img_file_name}"
	if ! [ -f "$img_file_path" ]; then
		echo "File_Not_Exists: ${img_file_path}"
		return 1
	fi

	wallpaper_sys_view "$img_file_path"
}

wallpaper_sys_xfce4_backdrops_open_dir () {

	local target_dir_path="/usr/share/xfce4/backdrops/"

	util_open_dir "$target_dir_path"
}



wallpaper_sys_option_xfce4_backdrops_file_check () {

	if ! [ -e "$HOME/.config/bspwm/wallpaper/option/dir_xfce4_backdrops/use" ] ; then
		mkdir -p "$HOME/.config/bspwm/wallpaper/option/dir_xfce4_backdrops"
		echo 'balance.jpg' > "$HOME/.config/bspwm/wallpaper/option/dir_xfce4_backdrops/use"
	fi

}

wallpaper_sys_xfce4_backdrops_use_name_get () {

	wallpaper_sys_option_xfce4_backdrops_file_check

	cat "$HOME/.config/bspwm/wallpaper/option/dir_xfce4_backdrops/use"
}

wallpaper_sys_xfce4_backdrops_use_name_set () {

	wallpaper_sys_option_xfce4_backdrops_file_check

	echo "$1" > "$HOME/.config/bspwm/wallpaper/option/dir_xfce4_backdrops/use"
}



##
### Tail: DirXfce4Backdrops / Model / Routine
################################################################################

<?php
/*

## Reference


*/
?>
