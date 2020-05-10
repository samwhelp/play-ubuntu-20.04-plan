

--------------------------------------------------------------------------------
--- Head: Keybind / Screen
--

awful.keyboard.append_global_keybindings({

	awful.key(
		{ key_alt, key_ctrl }, 'a', function () awful.screen.focus_relative(-1) end,
		{ description = 'Focus the previous screen', group = 'Screen'}
	),

	awful.key(
		{ key_alt, key_ctrl }, 's', function () awful.screen.focus_relative( 1) end,
		{ description = 'Focus the next screen', group = 'Screen'}
	),


})

--
--- Tail: Keybind / Screen
--------------------------------------------------------------------------------
