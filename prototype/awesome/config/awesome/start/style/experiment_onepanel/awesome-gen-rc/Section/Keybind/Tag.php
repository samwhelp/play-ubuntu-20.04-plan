

--------------------------------------------------------------------------------
--- Head: Keybind / Tag
--

awful.keyboard.append_global_keybindings({

	awful.key(
		{ key_alt }, 'a', awful.tag.viewprev,
		{ description = 'Previous Tag', group = 'Tag'}
	),

	awful.key(
		{ key_alt }, 's', awful.tag.viewnext,
		{ description = 'Next Tag', group = 'Tag'}
	),

	awful.key(
		{ key_alt }, 'z', awful.tag.history.restore,
		{ description = 'Last Tag', group = 'Tag'}
	),


	awful.key(
		{ key_alt }, 'h', awful.tag.viewprev,
		{ description = 'Previous Tag', group = 'Tag'}
	),

	awful.key(
		{ key_alt }, 'l', awful.tag.viewnext,
		{ description = 'Next Tag', group = 'Tag'}
	),


	awful.key(
		{ key_alt }, 'bracketleft', awful.tag.viewprev,
		{ description = 'Previous Tag', group = 'Tag'}
	),

	awful.key(
		{ key_alt }, 'bracketright', awful.tag.viewnext,
		{ description = 'Next Tag', group = 'Tag'}
	),


})


awful.keyboard.append_global_keybindings({
	awful.key {
		modifiers = { key_alt },
		keygroup = 'numrow',
		description = 'Only view tag',
		group = 'Tag',
		on_press = function (index)
			local screen = awful.screen.focused()
			local tag = screen.tags[index]
			if tag then
				tag:view_only()
			end
		end,
	},

	awful.key {
		modifiers = { key_super },
		keygroup = 'numrow',
		description = 'Move focused client to tag',
		group = 'Tag',
		on_press = function (index)
			if client.focus then
				local tag = client.focus.screen.tags[index]
				if tag then
					client.focus:move_to_tag(tag)
				end
			end
		end,
	},




	awful.key {
		modifiers   = { key_alt, key_ctrl },
		keygroup	= 'numrow',
		description = 'Toggle tag',
		group	   = 'Tag',
		on_press	= function (index)
			local screen = awful.screen.focused()
			local tag = screen.tags[index]
			if tag then
				awful.tag.viewtoggle(tag)
			end
		end,
	},

	awful.key {
		modifiers   = { key_super, key_alt, key_ctrl },
		keygroup	= 'numrow',
		description = 'Toggle focused client on tag',
		group	   = 'Tag',
		on_press	= function (index)
			if client.focus then
				local tag = client.focus.screen.tags[index]
				if tag then
					client.focus:toggle_tag(tag)
				end
			end
		end,
	}
})

--
--- Tail: Keybind / Tag
--------------------------------------------------------------------------------
