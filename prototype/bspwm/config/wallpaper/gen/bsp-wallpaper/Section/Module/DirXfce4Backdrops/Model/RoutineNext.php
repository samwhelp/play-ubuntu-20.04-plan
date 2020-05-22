
################################################################################
### Head: DirXfce4Backdrops / Model / Routine / Next
##

wallpaper_sys_xfce4_backdrops_next_select_num () {
	local xfce4_backdrops
	local current="$(wallpaper_sys_xfce4_backdrops_use_name_get)"
	local list
	local list_count=$(wallpaper_sys_xfce4_backdrops_list_count)
	local line=1
	local next=1

	list=$(wallpaper_sys_xfce4_backdrops_list)


	for xfce4_backdrops in $list ; do
		##echo $line

		if [ "$current" == "$xfce4_backdrops" ] ; then
			#echo $xfce4_backdrops
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

wallpaper_sys_xfce4_backdrops_next_select_name () {
	line=$(wallpaper_sys_xfce4_backdrops_next_select_num)
	wallpaper_sys_get_xfce4_backdrops_name_by_xfce4_backdrops_num "$line"
}

##
### Tail: DirXfce4Backdrops / Model / Routine / Next
################################################################################

<?php
/*

## Reference


*/
?>
