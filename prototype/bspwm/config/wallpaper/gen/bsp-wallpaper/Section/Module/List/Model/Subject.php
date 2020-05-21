
################################################################################
### Head: List / Model / Subject
##


wallpaper_run_list () {

	local args="$@"

	local list_type=$(wallpaper_sys_list_type_name_get)

	local function_name=$(wallpaper_sys_run_list_find_function_name "$list_type")

	##echo $function_name
	# if ! command -v $function_name > /dev/null; then
	if ! type -p $function_name > /dev/null; then
		##util_debug_echo "[Debug] wallpaper_run_list_sub_not_exist: list_type=$list_type; function_name=$function_name"

		wallpaper_run_list_sub_default "$args"
		return 0
	fi

	"$function_name" "$args" ## run sub function


}

wallpaper_run_next () {
	local args="$@"

	local list_type=$(wallpaper_sys_list_type_name_get)

	local function_name=$(wallpaper_sys_run_next_find_function_name "$list_type")

	##echo $function_name
	# if ! command -v $function_name > /dev/null; then
	if ! type -p $function_name > /dev/null; then
		##util_debug_echo "[Debug] wallpaper_run_list_sub_not_exist: list_type=$list_type; function_name=$function_name"

		wallpaper_run_next_sub_default "$args"
		return 0
	fi

	"$function_name" "$args" ## run sub function

}

wallpaper_run_random () {
	local args="$@"

	local list_type=$(wallpaper_sys_list_type_name_get)

	local function_name=$(wallpaper_sys_run_random_find_function_name "$list_type")

	##echo $function_name
	# if ! command -v $function_name > /dev/null; then
	if ! type -p $function_name > /dev/null; then
		##util_debug_echo "[Debug] wallpaper_run_list_sub_not_exist: list_type=$list_type; function_name=$function_name"

		wallpaper_run_random_sub_default "$args"
		return 0
	fi

	"$function_name" "$args" ## run sub function

}

##
### Tail: List / Model / Subject
################################################################################

<?php
/*

## Reference


*/
?>
