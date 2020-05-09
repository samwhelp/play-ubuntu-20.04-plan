

--------------------------------------------------------------------------------
--- Head: Request Desktop Decoration
--


-- Keyboard map indicator and switcher
keyboardlayout_main = awful.widget.keyboardlayout()

-- Create a textclock widget
textclock_main = wibox.widget.textclock()


screen.connect_signal('request::desktop_decoration', function(s)

	-- ## Notice: This Code Move to [Tag Layout]
	-- Each screen has its own tag table.
	-- awful.tag({ '1', '2', '3', '4', '5', '6', '7', '8', '9' }, s, awful.layout.layouts[1])
	--awful.tag({ 'Term', 'Edit', 'Web', 'File', 'Misc', 'Free'}, s, awful.layout.layouts[1])
	--awful.tag({ 'Term', 'Edit', 'Web', 'File', 'Misc'}, s, awful.layout.layouts[1])
	-- ## Notice: This Code Move to [Tag Layout]



	-- Create a promptbox for each screen
	s.promptbox_main = awful.widget.prompt()

	-- Create an imagebox widget which will contain an icon indicating which layout we're using.
	-- We need one layoutbox per screen.
	s.layoutbox_main = awful.widget.layoutbox {
		screen  = s,
		buttons = {
			awful.button({ }, 1, function () awful.layout.inc( 1) end),
			awful.button({ }, 3, function () awful.layout.inc(-1) end),
			awful.button({ }, 4, function () awful.layout.inc( 1) end),
			awful.button({ }, 5, function () awful.layout.inc(-1) end),
		}
	}

	-- Create a taglist widget
	s.taglist_main = awful.widget.taglist {
		screen  = s,
		filter  = awful.widget.taglist.filter.all,
		buttons = {
			awful.button({ }, 1, function(t) t:view_only() end),
			awful.button({ key_super }, 1, function(t)
				if client.focus then
					client.focus:move_to_tag(t)
				end
			end),
			awful.button({ }, 3, awful.tag.viewtoggle),
			awful.button({ key_super }, 3, function(t)
				if client.focus then
					client.focus:toggle_tag(t)
				end
			end),
			awful.button({ }, 4, function(t) awful.tag.viewprev(t.screen) end),
			awful.button({ }, 5, function(t) awful.tag.viewnext(t.screen) end),
		}
	}

	-- Create a tasklist widget
	s.tasklist_main = awful.widget.tasklist {
		screen  = s,
		filter  = awful.widget.tasklist.filter.currenttags,
		buttons = {
			awful.button({ }, 1, function (c)
				c:activate { context = 'tasklist', action = 'toggle_minimization' }
			end),
			awful.button({ }, 2, function() awful.menu.client_list { theme = { width = 250 } } end),
			--awful.button({ }, 3, function() awful.menu.client_list { theme = { width = 250 } } end),
			awful.button({ }, 4, function() awful.client.focus.byidx(-1) end),
			awful.button({ }, 5, function() awful.client.focus.byidx( 1) end),
		},

		-- https://awesomewm.org/apidoc/widgets/awful.widget.tasklist.html
		style = {
			border_width = 1,
			border_color = '#777777',
			shape = gears.shape.rounded_bar,
		},

		layout = {
			spacing = 10,
			spacing_widget = {
				{
					forced_width = 5,
					shape = gears.shape.circle,
					widget = wibox.widget.separator
				},
				valign = 'center',
				halign = 'center',
				widget = wibox.container.place,
			},
			layout = wibox.layout.flex.horizontal
		},
		-- Notice that there is *NO* wibox.wibox prefix, it is a template,
		-- not a widget instance.
		widget_template = {
			{
				{
					{
						{
							id = 'icon_role',
							widget = wibox.widget.imagebox,
						},
						margins = 2,
						widget  = wibox.container.margin,
					},
					{
						id = 'text_role',
						widget = wibox.widget.textbox,
					},
					layout = wibox.layout.fixed.horizontal,
				},
				left  = 10,
				right = 10,
				widget = wibox.container.margin
			},
			id = 'background_role',
			widget = wibox.container.background,
		},

	}

	s.systray = wibox.widget.systray()

	-- Create the Top Panel
	s.panel_top = awful.wibar({ position = 'top', screen = s })

	-- Add widgets to Top Panel
	s.panel_top.widget = {
		layout = wibox.layout.align.horizontal,
		{ -- Left widgets
			layout = wibox.layout.fixed.horizontal,
			launcher_main,
			s.promptbox_main,
		},
		nil, -- Middle widget
		{ -- Right widgets
			layout = wibox.layout.fixed.horizontal,
			keyboardlayout_main,
			s.systray,
			textclock_main,
		},
	}


	-- Create the Bottom Panel
	s.panel_bottom = awful.wibar({ position = 'bottom', screen = s })

	-- Add widgets to Bottom Panel
	s.panel_bottom.widget = {
		layout = wibox.layout.align.horizontal,
		{ -- Left widgets
			layout = wibox.layout.fixed.horizontal,

		},
		s.tasklist_main, -- Middle widget
		{ -- Right widgets
			layout = wibox.layout.fixed.horizontal,
			s.taglist_main,
			s.layoutbox_main,
		},
	}

end)

--
--- Tail: Request Desktop Decoration
--------------------------------------------------------------------------------
