
################################################################################
### Head: List / Model / Routine / BootType
##


wallpaper_sys_boot_type_valid () {
	local boot_type_enum="$(wallpaper_sys_boot_type_enum)"
	local boot_type_to_set="$1"
	local boot_type
	local boot_type_valid

	for boot_type in $boot_type_enum ; do

		if [ "$boot_type_to_set" == "$boot_type" ] ; then
			boot_type_valid="$boot_type_to_set"
			break;
		fi

	done

	if [ "none${boot_type_valid}" = "none" ]; then
		boot_type_valid='recent'
	fi

	echo "$boot_type_valid"

}

wallpaper_sys_boot_type_enum () {

cat << EOF
off
recent
fixed
next
random
EOF

}

wallpaper_sys_option_boot_type_file_check () {

	if ! [ -e "$HOME/.config/bspwm/wallpaper/option/boot_type" ] ; then
		mkdir -p "$HOME/.config/bspwm/wallpaper/option"
		echo 'recent' > "$HOME/.config/bspwm/wallpaper/option/boot_type"
	fi

}

wallpaper_sys_boot_type_name_get () {

	wallpaper_sys_option_boot_type_file_check

	cat "$HOME/.config/bspwm/wallpaper/option/boot_type"
}

wallpaper_sys_boot_type_name_set () {

	wallpaper_sys_option_boot_type_file_check

	echo "$1" > "$HOME/.config/bspwm/wallpaper/option/boot_type"
}


wallpaper_sys_boot_type_name_get_valid () {
	##echo wallpaper_sys_boot_type_name_get_valid

	local boot_type="$(wallpaper_sys_boot_type_name_get)"

	boot_type="$(wallpaper_sys_boot_type_valid $boot_type)"


	echo "$boot_type"
}

wallpaper_sys_boot_type_name_set_valid () {
	##echo wallpaper_sys_boot_type_name_set_valid

	local boot_type="$1"

	boot_type="$(wallpaper_sys_boot_type_valid $boot_type)"

	wallpaper_sys_boot_type_name_set "$boot_type"

	echo "$boot_type"
}

##
### Tail: List / Model / Routine / BootType
################################################################################

<?php
/*

## Reference


*/
?>
