

--------------------------------------------------------------------------------
--- Head: request::default_keybindings
--

client.connect_signal('request::default_keybindings', function()

	awful.keyboard.append_client_keybindings({

		awful.key(
			{ key_super }, 'q', function (c) c:kill() end,
			{ description = 'Window Close', group = 'Client' }
		),

		awful.key(
			{ key_super }, 'f', function (c)
				c.fullscreen = not c.fullscreen
				c:raise()
			end,
			{ description = 'Window Toggle Fullscreen', group = 'Client' }
		),


		awful.key(
			{ key_super }, 'x', function (c)
				-- The client currently has the input focus, so it cannot be
				-- minimized, since minimized clients can't have the focus.
				c.minimized = true
			end ,
			{ description = 'Minimize', group = 'Client' }
		),

		awful.key(
			{ key_super }, 'n', function (c)
				-- The client currently has the input focus, so it cannot be
				-- minimized, since minimized clients can't have the focus.
				c.minimized = true
			end ,
			{ description = 'Minimize', group = 'Client' }
		),


		awful.key(
			{ key_super }, 'w', function (c)
				c.maximized = not c.maximized
				c:raise()
			end ,
			{ description = 'Window Toggle Maximize', group = 'Client' }
		),


		awful.key(
			{ key_super }, 'm', function (c)
				c.maximized = not c.maximized
				c:raise()
			end ,
			{ description = 'Window Toggle Maximize', group = 'Client' }
		),

		awful.key(
			{ key_super, 'Shift' }, 'm', function (c)
				c.maximized_horizontal = not c.maximized_horizontal
				c:raise()
			end ,
			{ description = 'Window Toggle Maximize Horizontally', group = 'Client' }
		),

		awful.key(
			{ key_super, 'Control' }, 'm', function (c)
				c.maximized_vertical = not c.maximized_vertical
				c:raise()
			end ,
			{ description = 'Window Toggle Maximize Vertically', group = 'Client' }
		),


		-- Todo: [Win + v] for toggle show or hide titlebar
		--awful.key(
		--	{ key_super }, 'v', awful.client.floating.toggle ,
		--	{ description = 'toggle floating', group = 'Client' }
		--),

		awful.key(
			{ key_alt }, 'v', awful.client.floating.toggle ,
			{ description = 'Window Toggle Floating', group = 'Client' }
		),

		-- Swap Client To Master
		awful.key(
			{ key_alt, 'Shift' }, 'p', function (c) c:swap(awful.client.getmaster()) end,
			{ description = 'Move to Master', group = 'Client' }
		),

		-- awful.key(
		-- 	{ key_super, 'Control' }, 'Return', function (c) c:swap(awful.client.getmaster()) end,
		-- 	{ description = 'move to master', group = 'Client' }
		-- ),


		awful.key(
			{ key_super }, 'o', function (c) c:move_to_screen() end,
			{ description = 'move to screen', group = 'Client' }
		),


		awful.key(
			{ key_super }, 't', function (c) c.ontop = not c.ontop end,
			{ description = 'toggle keep on top', group = 'Client' }
		),


	})

end)

--
--- Tail: request::default_keybindings
--------------------------------------------------------------------------------
