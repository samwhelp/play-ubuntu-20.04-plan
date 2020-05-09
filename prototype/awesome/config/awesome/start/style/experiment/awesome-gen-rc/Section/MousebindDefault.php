

--------------------------------------------------------------------------------
--- Head: request::default_mousebindings
--

client.connect_signal('request::default_mousebindings', function()

	awful.mouse.append_client_mousebindings({

		awful.button({ }, 1, function (c)
			c:activate { context = 'mouse_click' }
		end),


		awful.button({ key_super }, 1, function (c)
			c:activate { context = 'mouse_click', action = 'mouse_move'  }
		end),

		awful.button({ key_super }, 3, function (c)
			c:activate { context = 'mouse_click', action = 'mouse_resize'}
		end),


		awful.button({ key_alt }, 1, function (c)
			c:activate { context = 'mouse_click', action = 'mouse_move'  }
		end),

		awful.button({ key_alt }, 3, function (c)
			c:activate { context = 'mouse_click', action = 'mouse_resize'}
		end),

	})

end)

--
--- Tail: request::default_mousebindings
--------------------------------------------------------------------------------
