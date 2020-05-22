
################################################################################
### Head: Init
##
##set -e ## for Exit immediately if a command exits with a non-zero status.
THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
THE_CMD_FILE_NAME=$(basename $0)
##
### Tail: Init
################################################################################


################################################################################
### Head: Util / Debug
##

util_debug_echo () {
	if is_debug; then
		echo "$@" 1>&2;
	fi
}

##
### Head: Util / Debug
################################################################################


################################################################################
### Head: Base
##
find_dir_path () {
	if [ ! -d $(dirname -- "$1") ]; then
		dirname -- "$1"
		return 1
	fi
	echo $(cd -P -- "$(dirname -- "$1")" && pwd -P)
}

##THIS_BASE_DIR_PATH=$(find_dir_path $0)

## $ export DEBUG_COMPTON_CTRL=true
is_debug () {
	if [ "$DEBUG_COMPTON_CTRL" = "true" ]; then
		return 0
	fi

	return 1
}

is_not_debug () {
	! is_debug
}

base_var_init () {

	#THE_PLAN_DIR_PATH=$(find_dir_path "$THE_BASE_DIR_PATH/../.")
	THE_PLAN_DIR_PATH=$(find_dir_path "$THE_BASE_DIR_PATH/.")


	THE_CMD_VERSION='0.1'

	THE_CMD_DIR_PATH="${THE_BASE_DIR_PATH}"

	if [ "none${THE_CMD_FILE_NAME}" = 'none' ]; then
		THE_CMD_FILE_NAME="bsp-wallpaper"
	fi

	THE_CMD_FILE_PATH="${THE_CMD_DIR_PATH}/$THE_CMD_FILE_NAME"

	## https://github.com/samwhelp/play-ubuntu-20.04-plan/blob/master/prototype/bspwm/config/wallpaper/bin/bsp-wallpaper
	THE_SELF_UPDATE_URL='https://raw.githubusercontent.com/samwhelp/play-ubuntu-20.04-plan/master/prototype/bspwm/config/wallpaper/bin/bsp-wallpaper'


	THE_TMP_DIR_PATH="/tmp"


	THE_ASSET_DIR_NAME="asset"
	THE_ASSET_DIR_PATH="$THE_PLAN_DIR_PATH/$THE_ASSET_DIR_NAME"

	THE_VAR_DIR_NAME="var"
	THE_VAR_DIR_PATH="$THE_PLAN_DIR_PATH/$THE_VAR_DIR_NAME"


	THE_PROFILE_DIR_NAME=".${THE_CMD_FILE_NAME}-profile"
	THE_PROFILE_DIR_PATH="$HOME/$THE_PROFILE_DIR_NAME"

	THE_PROJECT_DIR_NAME="$THE_CMD_FILE_NAME"
	THE_PROJECT_DIR_PATH="$HOME/.local/share/$THE_PROJECT_DIR_NAME"

	THE_CONFIG_DIR_NAME="$THE_CMD_FILE_NAME"
	THE_CONFIG_DIR_PATH="$HOME/.config/$THE_CONFIG_DIR_NAME"

	THE_CACHE_DIR_NAME="$THE_CMD_FILE_NAME"
	THE_CACHE_DIR_PATH="$HOME/.cache/$THE_CACHE_DIR_NAME"


}

base_var_dump () {

	is_not_debug && return 0

	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: var_dump"
	util_debug_echo "##"
	util_debug_echo "#"


	util_debug_echo "THE_PLAN_DIR_PATH=$THE_PLAN_DIR_PATH"

	util_debug_echo "THE_CMD_FILE_NAME=$THE_CMD_FILE_NAME"
	util_debug_echo "THE_CMD_FILE_PATH=$THE_CMD_FILE_PATH"
	util_debug_echo "THE_CMD_DIR_PATH=$THE_CMD_DIR_PATH"

	util_debug_echo "THE_SELF_UPDATE_URL=$THE_SELF_UPDATE_URL"


	util_debug_echo "THE_TMP_DIR_PATH=$THE_TMP_DIR_PATH"


	util_debug_echo "THE_ASSET_DIR_NAME=$THE_ASSET_DIR_NAME"
	util_debug_echo "THE_ASSET_DIR_PATH=$THE_ASSET_DIR_PATH"

	util_debug_echo "THE_VAR_DIR_NAME=$THE_VAR_DIR_NAME"
	util_debug_echo "THE_VAR_DIR_PATH=$THE_VAR_DIR_PATH"




	util_debug_echo "THE_PROFILE_DIR_NAME=$THE_PROFILE_DIR_NAME"
	util_debug_echo "THE_PROFILE_DIR_PATH=$THE_PROFILE_DIR_PATH"

	util_debug_echo "THE_PROJECT_DIR_NAME=$THE_PROJECT_DIR_NAME"
	util_debug_echo "THE_PROJECT_DIR_PATH=$THE_PROJECT_DIR_PATH"

	util_debug_echo "THE_CONFIG_DIR_NAME=$THE_CONFIG_DIR_NAME"
	util_debug_echo "THE_CONFIG_DIR_PATH=$THE_CONFIG_DIR_PATH"

	util_debug_echo "THE_CACHE_DIR_NAME=$THE_CACHE_DIR_NAME"
	util_debug_echo "THE_CACHE_DIR_PATH=$THE_CACHE_DIR_PATH"



	util_debug_echo "#"
	util_debug_echo "##"
	util_debug_echo "### Tail: var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo
}


base_var_init

base_var_dump

##
### Tail: Base
################################################################################

<?php
/*

## Reference


*/
?>
