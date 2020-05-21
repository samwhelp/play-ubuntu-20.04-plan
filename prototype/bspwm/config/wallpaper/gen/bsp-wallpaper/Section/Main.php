
################################################################################
### Head: Main
##

main_usage () {
	##local cmd_name="$0"
	local cmd_name="$THE_CMD_FILE_NAME"

cat << EOF
Usage:

	## synopsis

		$ $cmd_name [action]

	## version

		$ $cmd_name version

	## self_update

		$ $cmd_name self_update

	## help

		$ $cmd_name help

	## control

		$ $cmd_name start
		$ $cmd_name stop
		$ $cmd_name restart
		$ $cmd_name toggle

	## use

		$ $cmd_name use {img_file_path}

	## list

		$ $cmd_name list_type_enum
		$ $cmd_name list_type {list_type}
		$ $cmd_name list
		$ $cmd_name random
		$ $cmd_name next

	## theme

		$ $cmd_name theme [name]
		$ $cmd_name theme_list
		$ $cmd_name theme_next
		$ $cmd_name theme_random

	## backgrounds

		$ $cmd_name backgrounds_list
		$ $cmd_name backgrounds_use {img_file_name}
		$ $cmd_name backgrounds_view {img_file_name}
		$ $cmd_name backgrounds_open_dir
		$ $cmd_name backgrounds_next
		$ $cmd_name backgrounds_random

	## pictures

		$ $cmd_name pictures_list
		$ $cmd_name pictures_use {img_file_name}
		$ $cmd_name pictures_view {img_file_name}
		$ $cmd_name pictures_open_dir
		$ $cmd_name pictures_next
		$ $cmd_name pictures_random

	## xfce4_backdrops

		$ $cmd_name xfce4_backdrops_list
		$ $cmd_name xfce4_backdrops_use {img_file_name}
		$ $cmd_name xfce4_backdrops_view {img_file_name}
		$ $cmd_name xfce4_backdrops_open_dir
		$ $cmd_name xfce4_backdrops_next
		$ $cmd_name xfce4_backdrops_random

	## target_dir

		$ $cmd_name target_dir_path
		$ $cmd_name target_dir_list
		$ $cmd_name target_dir_use {img_file_name}
		$ $cmd_name target_dir_view {img_file_name}
		$ $cmd_name target_dir_open_dir
		$ $cmd_name target_dir_next
		$ $cmd_name target_dir_random

Example:


	## theme / help

		$ $cmd_name theme_help

	## theme / list

		$ $cmd_name theme_list

	## theme / get

		$ $cmd_name theme

	## theme / set

		$ $cmd_name theme 'default'
		$ $cmd_name theme 'bionic.Spices_in_Athens'
		$ $cmd_name theme 'bionic.Manhattan_Sunset'

	## use

		$ $cmd_name use '/usr/share/backgrounds/Spices_in_Athens_by_Makis_Chourdakis.jpg'


Debug:
	$ export DEBUG_COMPTON_CTRL=true

EOF

}

main_check_args_size () {
	if [ $1 -le 0 ]; then
		shift
		main_run_default_sub_cmd "$@"
		exit 1
	fi
}

main_run_default_sub_cmd () {
	main_usage "$@"
}

main_run_sub_cmd () {

	local sub_cmd="$1"

	shift

	local args="$@"

	local function_name=$(sub_cmd_find_function_name "$sub_cmd")

	## if ! command -v $function_name > /dev/null; then
	if ! type -p $function_name > /dev/null; then
		util_debug_echo "[Debug] sub_cmd_function_not_exist: sub_cmd=$sub_cmd; function_name=$function_name"

		echo
		main_run_default_sub_cmd "$args"
		return 1
	fi

	"$function_name" "$args" ## run sub cmd function


}

## Start
main_check_args_size $# "$@"

main_run_sub_cmd "$@"

##
### Tail: Main
################################################################################

<?php
/*

## Reference


*/
?>
