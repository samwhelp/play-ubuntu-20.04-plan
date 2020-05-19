

--------------------------------------------------------------------------------
--- Head: Keybind / Compton
--

awful.keyboard.append_global_keybindings({

	awful.key(
		{ key_alt }, 'w', function ()
			awful.spawn('aw-compton toggle')
		end,
		{description = "Toggle Compton", group = "Custom"}
	),


})

--
--- Tail: Keybind / Compton
--------------------------------------------------------------------------------
