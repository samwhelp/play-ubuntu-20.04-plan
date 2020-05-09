

--------------------------------------------------------------------------------
-- Head: Menu
--

-- Create a launcher widget and a main menu
menu_awesome = {
	{ 'Hotkeys', function() hotkeys_popup.show_help(nil, awful.screen.focused()) end },
	{ 'Manual', terminal .. ' -e man awesome' },
	{ 'Edit config', editor_cmd .. ' ' .. awesome.conffile },
	{ 'Restart', awesome.restart },
	{ 'Quit', function() awesome.quit() end },
}

menu_exit = {
	{ 'Reboot', 'reboot' },
	{ 'Shutdown', 'shutdown now' },
	{ 'Switch user', 'dm-tool switch-to-greeter' },
	{ 'Suspend', 'systemctl suspend' },
	{ 'Log out', function() awesome.quit() end },
}

menu_main = awful.menu({ items = {
	{ 'Awesome', menu_awesome, beautiful.awesome_icon },
	{ 'Terminal', terminal },
	{ 'File', 'pcmanfm-qt' },
	{ 'Web', 'firefox' },
	{ 'Editor', 'mousepad' },
	-- { 'Rofi Drun', function() awful.spawn.with_shell('rofi -show drun -show-icons') end},
	{ 'Exit', menu_exit },
}})

launcher_main = awful.widget.launcher({
	image = beautiful.awesome_icon,
	menu = menu_main,
})


-- Menubar configuration
menubar.utils.terminal = terminal -- Set the terminal for applications that require it

--
-- Tail: Menu
--------------------------------------------------------------------------------
