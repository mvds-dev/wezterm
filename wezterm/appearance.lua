local M = {}

local wezterm = require("wezterm")
function M.apply_to(config)
	config.font = wezterm.font("Monofur Nerd Font")
	config.font_size = 15
  config.window_background_opacity = 0.85
	config.color_scheme = "Catppuccin Frappe"
	config.window_padding = {
		left = 10,
		right = 10,
		top = 10,
		bottom = 10,
	}
end

return M
