

--------------------------------------------------------------------------------
--- Head: Keybind / Volume Control
--

awful.keyboard.append_global_keybindings({


	awful.key(
		{ key_alt, key_shift }, 'v', function () awful.spawn('mate-volume-control') end,
		{ description = 'Launch Volume Control', group = 'Volume'}
	),


	awful.key(
		{ key_alt }, 'm', function () awful.spawn('amixer -q -D pulse sset Master toggle') end,
		{ description = 'Volume Toggle Mute', group = 'Volume'}
	),

	awful.key(
		{ key_alt, key_shift }, 'comma', function () awful.spawn('amixer -q -D pulse sset Master 5%- unmute') end,
		{ description = 'Volume Decrease', group = 'Volume'}
	),

	awful.key(
		{ key_alt, key_shift }, 'period', function () awful.spawn('amixer -q -D pulse sset Master 5%+ unmute') end,
		{ description = 'Volume Increase', group = 'Volume'}
	),

	awful.key(
		{ key_alt, key_ctrl }, 'comma', function () awful.spawn('amixer -q -D pulse sset Master 1%- unmute') end,
		{ description = 'Volume Decrease Slowly', group = 'Volume'}
	),

	awful.key(
		{ key_alt, key_ctrl }, 'period', function () awful.spawn('amixer -q -D pulse sset Master 1%+ unmute') end,
		{ description = 'Volume Increase Slowly', group = 'Volume'}
	),

	awful.key(
		{  }, 'XF86AudioMute', function () awful.spawn('amixer -q -D pulse sset Master toggle') end,
		{ description = 'XF86Audio Mute', group = 'Volume'}
	),

	awful.key(
		{  }, 'XF86AudioLowerVolume', function () awful.spawn('amixer -q -D pulse sset Master 5%- unmute') end,
		{ description = 'XF86Audio Lower Volume', group = 'Volume'}
	),

	awful.key(
		{  }, 'XF86AudioRaiseVolume', function () awful.spawn('amixer -q -D pulse sset Master 5%+ unmute') end,
		{ description = 'XF86Audio Raise Volume', group = 'Volume'}
	),

})

--
--- Tail: Keybind / Volume Control
--------------------------------------------------------------------------------
