

--------------------------------------------------------------------------------
--- Head: Keybind / Awesome
--

awful.keyboard.append_global_keybindings({

	awful.key(
		{ key_alt, key_shift }, 'z', function () awful.spawn('shutdown now') end,
		{ description = 'Shutdown', group = 'Awesome'}
	),

	awful.key(
		{ key_alt, key_shift }, 'x', function() awesome.quit() end,
		{ description = 'Logout', group = 'Awesome'}
	),

	awful.key(
		{ key_alt, key_shift }, 'c', awesome.restart,
		{ description = 'Restart', group = 'Awesome'}
	),

})


awful.keyboard.append_global_keybindings({

	awful.key(
		{ key_super }, 'F1', hotkeys_popup.show_help,
		{ description = 'Hotkeys', group = 'Awesome'}
	),

	awful.key(
		{ key_super }, 'space', function () menu_main:show() end,
		{ description = 'Show Main Menu', group = 'Awesome'}
	),

	awful.key(
		{ key_super }, 'c', function() awful.menu.client_list { theme = { width = 250 } } end,
		{ description = 'Show Client List', group = 'Awesome'}
	),

})


awful.keyboard.append_global_keybindings({

	awful.key(
		{ key_alt }, 'F1', function() menubar.show() end,
		{description = 'Show The MenuBar', group = 'Awesome'}
	),

	awful.key(
		{ key_alt }, 'F2', function () awful.screen.focused().promptbox_main:run() end,
		{description = 'Run Prompt', group = 'Awesome'}
	),

	awful.key(
		{ key_alt }, 'F3', function ()
			awful.prompt.run {
				prompt	   = 'Run Lua code: ',
				textbox	  = awful.screen.focused().promptbox_main.widget,
				exe_callback = awful.util.eval,
				history_path = awful.util.get_cache_dir() .. '/history_eval'
			}
		end,
		{description = 'Lua Execute Prompt', group = 'Awesome'}
	),

})


awful.keyboard.append_global_keybindings({

	awful.key(
		{ key_super }, 'd', handle_global_mouse_left_button,
		{ description = 'Show Desktop', group = 'Awesome'}
	),

})

--
--- Tail: Keybind / Awesome
--------------------------------------------------------------------------------
