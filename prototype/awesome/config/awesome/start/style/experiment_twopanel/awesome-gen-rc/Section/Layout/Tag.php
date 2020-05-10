

--------------------------------------------------------------------------------
-- Head: Tag Layout
--

screen.connect_signal("request::desktop_decoration", function(s)

	--print('request::desktop_decoration')

	-- Each screen has its own tag table.
	-- awful.tag({ '1', '2', '3', '4', '5', '6', '7', '8', '9' }, s, awful.layout.layouts[1])
	--awful.tag({ 'Term', 'Edit', 'Web', 'File', 'Misc', 'Free'}, s, awful.layout.layouts[1])
	awful.tag({ 'Term', 'Edit', 'Web', 'File', 'Misc'}, s, awful.layout.layouts[1])

end)


--
-- Tail: Tag Layout
--------------------------------------------------------------------------------
