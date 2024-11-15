-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Ayu Mirage'

-- and finally, return the configuration to wezterm

config.font = wezterm.font 'Monofur Nerd Font'

config.font_size = 16
config.line_height = 1.0


return config
