

--------------------------------------------------------------------------------
--- Head: Client Rules
--

-- Rules to apply to new clients.
awful.rules.rules = {
	-- All clients will match this rule.
	{
		rule = { },
		properties = {
			focus = awful.client.focus.filter,
			raise = true,
			screen = awful.screen.preferred,
			placement = awful.placement.no_overlap+awful.placement.no_offscreen
		}
	},

	-- Floating clients.
	{
		rule_any = {
			instance = {
				'DTA',  -- Firefox addon DownThemAll.
				'copyq',  -- Includes session name in class.
				'pinentry',
			},
			class = {
				'Arandr',
				'Blueman-manager',
				'Gpick',
				'Kruler',
				'MessageWin',  -- kalarm.
				'Sxiv',
				'Tor Browser', -- Needs a fixed window size to avoid fingerprinting by screen size.
				'Wpa_gui',
				'veromix',
				'xtightvncviewer'
			},

			-- Note that the name property shown in xprop might be set slightly after creation of the client
			-- and the name shown there might not match defined rules here.
			name = {
				'Event Tester',  -- xev.
			},
			role = {
				'AlarmWindow',  -- Thunderbird's calendar.
				'ConfigManager',  -- Thunderbird's about:config.
				'pop-up',	   -- e.g. Google Chrome's (detached) Developer Tools.
			}
		},
		properties = { floating = true }

	},

	-- Add titlebars to normal clients and dialogs
	{
		rule_any = {
			type = {
				'normal',
				'dialog',
			}
		},
		properties = { titlebars_enabled = true }
	},

	-- Set Firefox to always map on the tag named '2' on screen 1.
	-- { rule = { class = 'Firefox' },
	--   properties = { screen = 1, tag = '2' } },

	-- {
	-- 	rule = { instance = 'sakura' },
	-- 	properties = { tag = 'Term' or '1' or 'Misc' }
	-- },

	{
		rule = { instance = 'atom' },
		properties = { tag = 'Edit' or '2' or 'Misc' }
	},

	{
		rule = { class = 'Firefox' },
		properties = { tag = 'Web' or '3' or 'Misc'}
	},

	{
		rule = { instance = 'pcmanfm-qt' },
		properties = { tag = 'File' or '4' or 'Misc' }
	},

	{
		rule = { instance = 'gimp' },
		properties = { tag = 'Misc' or '5' or 'Term' }
	},

	{
		rule = { instance = 'Xephyr' },
		properties = { tag = 'Misc' or '5' or 'Term' }
	},

}

--
--- Tail: Client Rules
--------------------------------------------------------------------------------
