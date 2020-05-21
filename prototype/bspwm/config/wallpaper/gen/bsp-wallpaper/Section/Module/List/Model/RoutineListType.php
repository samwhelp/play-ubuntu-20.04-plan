
################################################################################
### Head: List / Model / Routine / ListType
##


wallpaper_sys_list_type_valid () {
	local list_type_enum="$(wallpaper_sys_list_type_enum)"
	local list_type_to_set="$1"
	local list_type
	local list_type_valid

	for list_type in $list_type_enum ; do

		if [ "$list_type_to_set" == "$list_type" ] ; then
			list_type_valid="$list_type_to_set"
			break;
		fi

	done

	if [ "none${list_type_valid}" = "none" ]; then
		list_type_valid='backgrounds'
	fi

	echo "$list_type_valid"

}

wallpaper_sys_list_type_enum () {

cat << EOF
theme
backgrounds
pictures
xfce4_backdrops
target_dir
EOF

}

wallpaper_sys_option_list_type_file_check () {

	if ! [ -e "$HOME/.config/bspwm/wallpaper/option/list_type" ] ; then
		mkdir -p "$HOME/.config/bspwm/wallpaper/option"
		echo 'backgrounds' > "$HOME/.config/bspwm/wallpaper/option/list_type"
	fi

}

wallpaper_sys_list_type_name_get () {

	wallpaper_sys_option_list_type_file_check

	cat "$HOME/.config/bspwm/wallpaper/option/list_type"
}

wallpaper_sys_list_type_name_set () {

	wallpaper_sys_option_list_type_file_check

	echo "$1" > "$HOME/.config/bspwm/wallpaper/option/list_type"
}


wallpaper_sys_list_type_name_get_valid () {
	##echo wallpaper_sys_list_type_name_get_valid

	local list_type="$(wallpaper_sys_list_type_name_get)"

	list_type="$(wallpaper_sys_list_type_valid $list_type)"


	echo "$list_type"
}

wallpaper_sys_list_type_name_set_valid () {
	##echo wallpaper_sys_list_type_name_set_valid

	local list_type="$1"

	list_type="$(wallpaper_sys_list_type_valid $list_type)"

	wallpaper_sys_list_type_name_set "$list_type"

	echo "$list_type"
}

##
### Tail: List / Model / Routine / ListType
################################################################################

<?php
/*

## Reference


*/
?>
