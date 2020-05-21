
################################################################################
### Head: DirTargetDir / Model / Routine / Next
##

wallpaper_sys_target_dir_next_select_num () {
	local target_dir
	local current=$(wallpaper_sys_target_dir_use_name_get)
	local list
	local list_count=$(wallpaper_sys_target_dir_list_count)
	local line=1
	local next=1

	list=$(wallpaper_sys_target_dir_list)


	for target_dir in $list ; do
		##echo $line

		if [ "$current" == "$target_dir" ] ; then
			#echo $target_dir
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


wallpaper_sys_target_dir_next_select_name () {
	line=$(wallpaper_sys_target_dir_next_select_num)
	wallpaper_sys_get_target_dir_name_by_target_dir_num "$line"
}


##
### Tail: DirTargetDir / Model / Routine / Next
################################################################################

<?php
/*

## Reference


*/
?>
