local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Import settings from other files

local appearance = require("wezterm.appearance")
local keybindings = require("wezterm.keybindings")
local tabs_and_panes = require("wezterm.tabs_and_panes")

-- Apply settings from other modules

appearance.apply_to(config)
keybindings.apply_to(config)
tabs_and_panes.apply_to(config)

return config
