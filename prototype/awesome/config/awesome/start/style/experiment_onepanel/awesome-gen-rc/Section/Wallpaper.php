

--------------------------------------------------------------------------------
--- Head: Request Wallpaper
--

screen.connect_signal('request::wallpaper', function(s)

	-- Wallpaper
	if beautiful.wallpaper then
		local wallpaper = beautiful.wallpaper
		-- If wallpaper is a function, call it with the screen
		if type(wallpaper) == 'function' then
			wallpaper = wallpaper(s)
		end
		gears.wallpaper.maximized(wallpaper, s, true)
	end

end)

--
--- Tail: Request Wallpaper
--------------------------------------------------------------------------------