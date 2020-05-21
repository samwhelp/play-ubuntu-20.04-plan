
################################################################################
### Head: List / Model / Routine
##


wallpaper_sys_list_type_enum_valid () {
	local list_type_enum=$(wallpaper_sys_list_type_enum)
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
		list_type_valid='theme'
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
		echo 'theme' > "$HOME/.config/bspwm/wallpaper/option/list_type"
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


wallpaper_sys_run_list_find_function_name () {
	echo "wallpaper_run_list_sub_$1"
}

wallpaper_sys_run_next_find_function_name () {
	echo "wallpaper_run_next_sub_$1"
}

wallpaper_sys_run_random_find_function_name () {
	echo "wallpaper_run_random_sub_$1"
}

##
### Tail: List / Model / Routine
################################################################################

<?php
/*

## Reference


*/
?>
