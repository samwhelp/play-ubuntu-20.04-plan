
################################################################################
### Head: Session / Model / Routine / Feh
##

wallpaper_sys_session_stop () {
	killall -q -9 feh
}

wallpaper_sys_session_start () {

	wallpaper_sys_remove_fehbg

	##bsp-wallpaper-start
	wallpaper_run_boot
}

wallpaper_sys_session_restart () {

	wallpaper_sys_session_stop

	wallpaper_sys_session_start

}

wallpaper_sys_session_reconfigure () {
	pkill -USR1 -x feh

}

wallpaper_sys_session_toggle () {
	if pgrep -x 'wallpaper' > /dev/null; then
		wallpaper_sys_session_stop
	else
		wallpaper_sys_session_start
	fi
}

##
### Tail: Session / Model / Routine / Feh
################################################################################

<?php
/*

## Reference


*/
?>
