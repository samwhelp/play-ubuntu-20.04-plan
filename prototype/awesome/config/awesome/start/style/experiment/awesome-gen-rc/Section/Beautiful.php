

--------------------------------------------------------------------------------
-- Head: Beautiful
--

-- https://awesomewm.org/apidoc/sample%20files/theme.lua.html
-- https://awesomewm.org/apidoc/theme_related_libraries/beautiful.html#init
-- https://awesomewm.org/apidoc/documentation/05-awesomerc.md.html#Variable_definitions
-- https://awesomewm.org/apidoc/documentation/06-appearance.md.html

print('gears.filesystem.get_themes_dir() = ' .. gears.filesystem.get_themes_dir())
print('gears.filesystem.get_configuration_dir() = ' .. gears.filesystem.get_configuration_dir())

--beautiful.init(gears.filesystem.get_configuration_dir() .. 'theme/experiment/theme.lua')
beautiful.init(gears.filesystem.get_configuration_dir() .. 'theme/experiment_icon_recolor/theme.lua')

-- ## Themes define colours, icons, font and wallpapers.
--beautiful.init(gears.filesystem.get_themes_dir() .. 'default/theme.lua')
--beautiful.init(gears.filesystem.get_themes_dir() .. 'gtk/theme.lua')
--beautiful.init(gears.filesystem.get_themes_dir() .. 'zenburn/theme.lua')
--beautiful.init(gears.filesystem.get_themes_dir() .. 'xresources/theme.lua')
--beautiful.init(gears.filesystem.get_themes_dir() .. 'sky/theme.lua')

-- ## Wallpaper
--beautiful.wallpaper = '/usr/share/backgrounds/Manhattan_Sunset_by_Giacomo_Ferroni.jpg'
--beautiful.wallpaper = '/usr/share/backgrounds/Spices_in_Athens_by_Makis_Chourdakis.jpg'
beautiful.wallpaper = '/usr/share/backgrounds/Frozen_sunset_on_the_lake_by_Manuel_Arslanyan.jpg'

--
-- Tail: Beautiful
--------------------------------------------------------------------------------
