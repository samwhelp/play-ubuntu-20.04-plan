

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


	-- ## input methond
	'fcitx',

	-- ## policykit
	-- $ apt-cache serch policykit
	'/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1',
	-- 'mate-polkit',

	-- ## volume-control
	--'volumeicon',
	--'mate-volume-control-applet',
	'mate-volume-control-status-icon',

	-- ## network
	'nm-applet',
	--'nm-tray',

	--'blueman-applet',

	-- ## compton
	'compton --config ~/.config/awesome-session/compton/compton.conf',

	-- ## screensaver
	--'xscreensaver',
	-- ## /etc/xdg/autostart/xscreensaver.desktop
	'/usr/share/xscreensaver/xscreensaver-wrapper.sh -no-splash',

	-- ## xdg-autostart (Package: obsession)
	'xdg-autostart'

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
