
################################################################################
### Head: Util / SubCmd
##

sub_cmd_find_function_name () {
	echo "sub_run_$1"
}

##
### Tail: Util / SubCmd
################################################################################


################################################################################
### Head: Util / Command
##

util_check_command_exists () {
	local function_name="$1"

	##if ! command -v $function_name > /dev/null; then
	if ! type -p $function_name > /dev/null; then
		util_debug_echo "[Debug] Command_Not_Exist: function_name=$function_name"
		return 1
	fi

	return 0
}

util_open_dir () {

	local target_dir_path="$1"

	if util_check_command_exists 'pcmanfm-qt'; then
		echo "pcmanfm-qt $target_dir_path"
		pcmanfm-qt "$target_dir_path"
	elif util_check_command_exists 'exo-open'; then
		echo "exo-open $target_dir_path"
		exo-open "$target_dir_path"
	elif util_check_command_exists 'xdg-open'; then
		echo "xdg-open $target_dir_path"
		xdg-open "$target_dir_path"
	else
		echo "$target_dir_path"
		return 1
	fi
}


##
### Head: Util / Command
################################################################################

<?php
/*

## Reference


*/
?>
