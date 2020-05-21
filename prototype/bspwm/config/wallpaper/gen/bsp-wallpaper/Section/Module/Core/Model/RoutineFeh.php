
################################################################################
### Head: Core / Model / Routine / Feh
##

wallpaper_sys_remove_fehbg () {
	rm -f "$HOME/.fehbg"
}

wallpaper_sys_use () {
	local img_file_path="$1"
	feh --bg-scale "$img_file_path" &
}

wallpaper_sys_view () {
	local img_file_path="$1"
	feh "$img_file_path" &
}

##
### Tail: Core / Model / Routine / Feh
################################################################################

<?php
/*

## Reference


*/
?>
