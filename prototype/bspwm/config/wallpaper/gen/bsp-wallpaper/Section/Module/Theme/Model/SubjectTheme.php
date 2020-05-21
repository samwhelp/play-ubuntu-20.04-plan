
################################################################################
### Head: Theme / Model / Subject
##

wallpaper_run_theme_help () {

	local cmd_name="$THE_CMD_FILE_NAME"

cat << EOF

Usage:

	## synopsis

		$ $cmd_name theme [name]


Example:

	## get

		$ $cmd_name theme

	## set

		$ $cmd_name theme 'default'
		$ $cmd_name theme 'bionic.Spices_in_Athens'
		$ $cmd_name theme 'bionic.Manhattan_Sunset'

EOF

}


wallpaper_run_theme () {

	local theme="$1"

	if [ "none${theme}" = "none" ]; then
		wallpaper_sys_theme_name_get
		return
	fi


	wallpaper_sys_theme_name_set "$theme"

	wallpaper_sys_session_restart

}

##
### Tail: Theme / Model / Subject
################################################################################

<?php
/*

## Reference


*/
?>
