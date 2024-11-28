local M = {}

local wezterm = require("wezterm")

function M.apply_to(config)
	config.keys = {
		{ key = "c", mods = "CTRL|SHIFT", action = wezterm.action.CopyTo("Clipboard") },
		{ key = "v", mods = "CTRL|SHIFT", action = wezterm.action.PasteFrom("Clipboard") },
	}
end

return M
