

--------------------------------------------------------------------------------
--- Head: Keybind / Layout
--

awful.keyboard.append_global_keybindings({

	-- alt + `
	awful.key(
		{ key_alt }, 'grave', function () awful.layout.inc(-1) end,
		{ description = 'Previous Layout', group = 'Layout' }
	),

	awful.key(
		{ key_alt }, 'Tab', function () awful.layout.inc(1) end,
		{ description = 'Next Layout', group = 'Layout' }
	),

	-- awful.key(
	-- 	{ key_alt, key_shift }, 'Tab', function () awful.layout.inc(-1) end,
	-- 	{ description = 'Previous Layout', group = 'Layout' }
	-- ),

	awful.key(
		{ key_alt }, 'k', function () awful.layout.inc(-1) end,
		{ description = 'Previous Layout', group = 'Layout' }
	),

	awful.key(
		{ key_alt }, 'j', function () awful.layout.inc(1) end,
		{ description = 'Next Layout', group = 'Layout' }
	),

	-- alt + ;
	awful.key(
		{ key_alt }, 'semicolon', function () awful.layout.inc(-1) end,
		{ description = 'Previous Layout', group = 'Layout' }
	),

	-- alt + '
	awful.key(
		{ key_alt }, 'apostrophe', function () awful.layout.inc(1) end,
		{ description = 'Next Layout', group = 'Layout' }
	),


-- not use [alt + c] for fzf
--	awful.key(
--		{ key_alt }, 'c', function () awful.layout.inc(1) end,
--		{ description = 'Next Layout', group = 'Layout' }
--	),

})


-- Master
awful.keyboard.append_global_keybindings({

	awful.key(
		{ key_alt, key_ctrl }, 'h', function () awful.tag.incmwfact(-0.05) end,
		{ description = 'Decrease master width factor', group = 'Layout' }
	),

	awful.key(
		{ key_alt, key_ctrl }, 'l', function () awful.tag.incmwfact( 0.05) end,
		{ description = 'Increase master width factor', group = 'Layout' }
	),


	awful.key(
		{ key_alt, key_ctrl }, 'k', function () awful.tag.incnmaster( 1, nil, true) end,
		{ description = 'Increase the number of master clients', group = 'Layout' }
	),

	awful.key(
		{ key_alt, key_ctrl }, 'j', function () awful.tag.incnmaster(-1, nil, true) end,
		{ description = 'Decrease the number of master clients', group = 'Layout' }
	),


	awful.key(
		{ key_alt, key_ctrl }, ',', function () awful.tag.incncol(-1, nil, true) end,
		{ description = 'Decrease the number of columns', group = 'Layout'}
	),

	awful.key(
		{ key_alt, key_ctrl }, '.', function () awful.tag.incncol( 1, nil, true) end,
		{ description = 'Increase the number of columns', group = 'Layout'}
	),


	awful.key(
		{ key_alt, key_ctrl }, '/', function ()
			print('Todo')
		end,
		{ description = 'Reset columns', group = 'Layout'}
	),

	awful.key(
		{ key_alt, key_ctrl }, 'space', function ()
			print('Todo')
		end,
		{ description = 'Reset number of master clients', group = 'Layout'}
	),

})

-- Swap Client
awful.keyboard.append_global_keybindings({

	awful.key(
		{ key_alt, key_shift }, 'h', function () awful.client.swap.byidx(-1) end,
		{ description = 'Swap with previous client by index', group = 'Client'}
	),

	awful.key(
		{ key_alt, key_shift }, 'l', function () awful.client.swap.byidx(1) end,
		{ description = 'Swap with next client by index', group = 'Client'}
	),

})

--
--- Tail: Keybind / Layout
--------------------------------------------------------------------------------
