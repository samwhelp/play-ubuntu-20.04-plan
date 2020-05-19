

--------------------------------------------------------------------------------
--- Head: Autorun
--

-- https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=361106#forumpost361106
-- /etc/xdg/autostart/
-- ~/.config/autostart

autorun = true
--autorun = false

-- Autorun programs
apps_autorun = {

	-- ## autostart script
	'aw-autostart',

}

-- For Test
--apps_autorun = {
--	'wallpaper.sh',
--}

if autorun then
	for app = 1, #apps_autorun do
		awful.spawn.with_shell(apps_autorun[app])
	end
end

--
--- Tail: Autorun
--------------------------------------------------------------------------------


<?php
/*

## Reference


*/
?>
