

--------------------------------------------------------------------------------
--- Head: Keybind / Panel
--


awful.keyboard.append_global_keybindings({

	-- https://pavelmakhov.com/2018/01/hide-systray-in-awesome/
	awful.key(
		{ key_alt }, 'equal', function ()
			awful.screen.focused().systray.visible = not awful.screen.focused().systray.visible
		end,
		{description = "Toggle systray visibility", group = "Custom"}
	),


})

--
--- Tail: Keybind / Panel
--------------------------------------------------------------------------------
