
################################################################################
### Head: DirBackgrounds / Model / Routine / Next
##

wallpaper_sys_backgrounds_next_select_num () {
	local backgrounds
	local current=$(wallpaper_sys_backgrounds_use_name_get)
	local list
	local list_count=$(wallpaper_sys_backgrounds_list_count)
	local line=1
	local next=1

	list=$(wallpaper_sys_backgrounds_list)


	for backgrounds in $list ; do
		##echo $line

		if [ "$current" == "$backgrounds" ] ; then
			#echo $backgrounds
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


wallpaper_sys_backgrounds_next_select_name () {
	line=$(wallpaper_sys_backgrounds_next_select_num)
	wallpaper_sys_get_backgrounds_name_by_backgrounds_num "$line"
}

##
### Tail: DirBackgrounds / Model / Routine / Next
################################################################################

<?php
/*

## Reference


*/
?>
