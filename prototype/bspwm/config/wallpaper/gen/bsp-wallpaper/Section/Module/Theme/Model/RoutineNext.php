
################################################################################
### Head: Theme / Model / Routine / Next
##

wallpaper_sys_theme_next_select_num () {
	local theme
	local current=$(wallpaper_sys_theme_name_get)
	local list
	local list_count=$(wallpaper_sys_theme_list_count)
	local line=1
	local next=1

	list=$(wallpaper_sys_theme_list)


	for theme in $list ; do
		##echo $line

		if [ "$current" == "$theme" ] ; then
			#echo $theme
			break;
		fi

		line=$(($line + 1))
	done

	next=$(($line + 1))


	if [ $next -gt $list_count ]; then
		next=1
	fi

	echo $next

}


wallpaper_sys_theme_next_select_name () {
	line=$(wallpaper_sys_theme_next_select_num)
	wallpaper_sys_get_theme_name_by_theme_num "$line"
}


##
### Tail: Theme / Model / Routine / Next
################################################################################

<?php
/*

## Reference


*/
?>
