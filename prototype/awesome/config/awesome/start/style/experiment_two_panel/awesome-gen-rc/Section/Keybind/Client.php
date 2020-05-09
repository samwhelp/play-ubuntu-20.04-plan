

--------------------------------------------------------------------------------
--- Head: Keybind / Client
--

awful.keyboard.append_global_keybindings({




	awful.key(
		{ key_super }, 'a', function () awful.client.focus.byidx(-1) end,
		{ description = 'Previous Client', group = 'Client'}
	),

	awful.key(
		{ key_super }, 's', function () awful.client.focus.byidx(1) end,
		{ description = 'Next Client', group = 'Client'}
	),

	awful.key(
		{ key_super }, 'z',
		function ()
			awful.client.focus.history.previous()
			if client.focus then
				client.focus:raise()
			end
		end,
		{ description = 'Back Last Client', group = 'Client'}
	),


	awful.key(
		{ key_super }, 'h', function () awful.client.focus.byidx(-1) end,
		{ description = 'Previous Client', group = 'Client'}
	),

	awful.key(
		{ key_super }, 'l', function () awful.client.focus.byidx(1) end,
		{ description = 'Next Client', group = 'Client'}
	),


	awful.key(
		{ key_super }, 'bracketleft', function () awful.client.focus.byidx(-1) end,
		{ description = 'Previous Client', group = 'Client'}
	),

	awful.key(
		{ key_super }, 'bracketright', function () awful.client.focus.byidx(1) end,
		{ description = 'Next Client', group = 'Client'}
	),



})

awful.keyboard.append_global_keybindings({

	-- Window Unminimize (Uniconify)
	awful.key(
		{ key_super, 'Shift' }, 'x', function ()
			local c = awful.client.restore()
			-- Focus restored client
			if c then
				c:activate { raise = true, context = 'key.unminimize' }
			end
		end,
		{ description = 'Restore minimized', group = 'Client' }
	),

	awful.key(
		{ key_super, 'Shift' }, 'n', function ()
			local c = awful.client.restore()
			-- Focus restored client
			if c then
				c:activate { raise = true, context = 'key.unminimize' }
			end
		end,
		{ description = 'Restore minimized', group = 'Client' }
	),


	awful.key(
		{ key_super }, 'u', awful.client.urgent.jumpto,
		{ description = 'Jump to urgent client', group = 'Client' }
	),

})




--
--- Tail: Keybind / Client
--------------------------------------------------------------------------------
