

--------------------------------------------------------------------------------
--- Head: Keybind / Launch Application / Terminal
--

awful.keyboard.append_global_keybindings({
	awful.key(
		{ key_alt }, 'Return', function () awful.spawn(terminal) end,
		{ description = 'Terminal (sakura)', group = 'App'}
	),

	awful.key(
		{ key_alt, key_shift }, 'a', function () awful.spawn('xfce4-terminal --drop-down') end,
		{ description = 'Terminal (quake)', group = 'App'}
	),

	awful.key(
		{ key_alt, key_shift }, 't', function () awful.spawn('xterm') end,
		{ description = 'Terminal (xterm)', group = 'App'}
	),

	awful.key(
		{ key_alt, key_ctrl }, 't', function () awful.spawn('urxvt') end,
		{ description = 'Terminal (urxvt)', group = 'App'}
	),

})

--
--- Tail: Keybind / Launch Application / Terminal
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
--- Head: Keybind / Launch Application / Misc
--

awful.keyboard.append_global_keybindings({


	awful.key(
		{ key_alt, key_shift }, 'f', function () awful.spawn('pcmanfm-qt') end,
		{ description = 'Pcmanfm-qt', group = 'App'}
	),

	awful.key(
		{ key_alt, key_shift }, 'g', function () awful.spawn('nautilus') end,
		{ description = 'Nautilus', group = 'App'}
	),

	awful.key(
		{ key_alt, key_shift }, 'e', function () awful.spawn('gedit') end,
		{ description = 'Gedit', group = 'App'}
	),

	awful.key(
		{ key_alt, key_shift }, 'b', function () awful.spawn('firefox') end,
		{ description = 'Firefox', group = 'App'}
	),


})

--
--- Tail: Keybind / Launch Application / Misc
--------------------------------------------------------------------------------
