

--------------------------------------------------------------------------------
--- Head: Util / Show Desktop
--

-- https://awesomewm.org/apidoc/core_components/client.html

local function util_show_desktop ()
	-- print('util_show_desktop')

	for _, c in ipairs(client.get()) do
		-- do something
		c.minimized = true
	end

end

--
-- Tail: Util / Show Desktop
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
--- Head: Handle / mouse_left_button
--

-- https://awesomewm.org/apidoc/core_components/client.html

local function handle_global_mouse_left_button ()
	-- Todo: emit_signal
	-- https://awesomewm.org/apidoc/classes/signals.html#signals:emit_signal

	-- let all client minimize
	util_show_desktop()

	-- https://awesomewm.org/apidoc/popups_and_bars/awful.menu.html#hide
	-- hide menu_main if showing
	menu_main:hide()

	-- Todo: hide client_list_menu if showing
	--awful.menu.client_list() -- this had side effect

end

--
-- Tail: Handle / mouse_left_button
--------------------------------------------------------------------------------
