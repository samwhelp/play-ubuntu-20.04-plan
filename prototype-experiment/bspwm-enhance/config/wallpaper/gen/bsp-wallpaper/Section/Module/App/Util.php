
################################################################################
### Head: App / Util / Self_Update
##

util_make_bin_dir () {
	mkdir -p "$HOME/bin"
}

util_make_tmp_dir () {
	THE_TMP_DIR_PATH="/tmp/tmp.$$.$RANDOM"
	mkdir "$THE_TMP_DIR_PATH"
}

util_self_update_download_to_tmp_dir () {

	local tmp_file_path="${THE_TMP_DIR_PATH}/${THE_CMD_FILE_NAME}"

	wget -c "$THE_SELF_UPDATE_URL" -O "$tmp_file_path"

}

util_self_update_install_from_tmp_dir () {

	local tmp_file_path="${THE_TMP_DIR_PATH}/${THE_CMD_FILE_NAME}"

	echo "install -m 755 $tmp_file_path $THE_CMD_FILE_PATH"
	install -m 755 "$tmp_file_path" "$THE_CMD_FILE_PATH"

}

util_self_update_check_cmd_exists () {

	if ! [ -f "$THE_CMD_FILE_PATH" ]; then ## file not exists
		return 0
	fi


	echo "File is exists:" "$THE_CMD_FILE_PATH"
	echo

	echo "Try to backup:"
	echo

	local now=$(date +%Y%m%d_%s)
	local bak_dir_path="${THE_CMD_FILE_PATH}.bak"
	local bak_file_path="${bak_dir_path}/${THE_CMD_FILE_NAME}.bak.$now"

	mkdir -p $bak_dir_path

	mv -v "$THE_CMD_FILE_PATH" "${bak_file_path}"

	if [ "$?" != "0" ]; then
		echo
		echo 'Backup Failure!'
		exit 1
	fi

	echo

	return 0
}

util_self_update_print_version () {
	echo
	echo "Current Version:"

	"$THE_CMD_FILE_PATH" version
}

util_self_update () {

	util_make_bin_dir

	util_make_tmp_dir

	util_self_update_download_to_tmp_dir

	util_self_update_check_cmd_exists && util_self_update_install_from_tmp_dir


	util_self_update_print_version

}


main_version () {
	echo $THE_CMD_VERSION
}

util_self_actions () {
	grep '^sub_run' "${THE_CMD_FILE_PATH}" | cut -d ' ' -f 1 | awk -F 'sub_run_' '{print $2}' | sort -u
}

##
### Tail: App / Util / Self_Update
################################################################################

<?php
/*

## Reference


*/
?>
