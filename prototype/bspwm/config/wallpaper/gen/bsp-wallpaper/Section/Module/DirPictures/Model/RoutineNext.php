
################################################################################
### Head: DirPictures / Model / Routine / Next
##

wallpaper_sys_pictures_next_select_num () {
	local pictures
	local current=$(wallpaper_sys_pictures_use_name_get)
	local list
	local list_count=$(wallpaper_sys_pictures_list_count)
	local line=1
	local next=1

	list=$(wallpaper_sys_pictures_list)


	for pictures in $list ; do
		##echo $line

		if [ "$current" == "$pictures" ] ; then
			#echo $pictures
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


wallpaper_sys_pictures_next_select_name () {
	line=$(wallpaper_sys_pictures_next_select_num)
	wallpaper_sys_get_pictures_name_by_pictures_num "$line"
}


##
### Tail: DirPictures / Model / Routine / Next
################################################################################

<?php
/*

## Reference


*/
?>
