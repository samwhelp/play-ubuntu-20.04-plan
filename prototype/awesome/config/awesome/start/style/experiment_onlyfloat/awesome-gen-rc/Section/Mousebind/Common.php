

--------------------------------------------------------------------------------
--- Head: Mousebind / Common
--

-- https://awesomewm.org/apidoc/input_handling/mouse.html
-- https://awesomewm.org/apidoc/input_handling/awful.button.html

awful.mouse.append_global_mousebindings({


	-- Mouse Left Button Click
	awful.button({ }, 1, handle_global_mouse_left_button),


	-- Mouse Middle Button Click
	awful.button({ }, 2, function () awful.menu.client_list { theme = { width = 250 } } end),

	-- Mouse Right Button Click
	--awful.button({ }, 3, function () menu_main:toggle() end),

	-- Mouse Right Button Click
	awful.button({ }, 3, function () awful.spawn('rofi -show drun -show-icons') end),

	-- Mouse Middle Button Scroll Up
	awful.button({ }, 4, awful.tag.viewprev),

	-- Mouse Middle Button Scroll Down
	awful.button({ }, 5, awful.tag.viewnext),
})

--
--- Tail: Mousebind / Common
--------------------------------------------------------------------------------
