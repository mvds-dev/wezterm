local wezterm = require("wezterm")

local M = {}

function M.apply_to(config)
	-- Keybindings for tab management
	config.keys = config.keys or {} -- Ensure keys exist before adding
	table.insert(config.keys, { key = "t", mods = "CTRL|SHIFT", action = wezterm.action.SpawnTab("CurrentPaneDomain") })
	table.insert(
		config.keys,
		{ key = "w", mods = "CTRL|SHIFT", action = wezterm.action.CloseCurrentTab({ confirm = true }) }
	)
	table.insert(config.keys, { key = "Tab", mods = "CTRL", action = wezterm.action.ActivateTabRelative(1) })
	table.insert(config.keys, { key = "Tab", mods = "CTRL|SHIFT", action = wezterm.action.ActivateTabRelative(-1) })

	-- Keybindings for pane management
	table.insert(
		config.keys,
		{ key = "d", mods = "CTRL|SHIFT", action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }) }
	)
	table.insert(
		config.keys,
		{ key = "g", mods = "CTRL|SHIFT", action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }) }
	)
	table.insert(config.keys, { key = "h", mods = "CTRL|SHIFT", action = wezterm.action.ActivatePaneDirection("Left") })
	table.insert(
		config.keys,
		{ key = "l", mods = "CTRL|SHIFT", action = wezterm.action.ActivatePaneDirection("Right") }
	)
	table.insert(config.keys, { key = "k", mods = "CTRL|SHIFT", action = wezterm.action.ActivatePaneDirection("Up") })
	table.insert(config.keys, { key = "j", mods = "CTRL|SHIFT", action = wezterm.action.ActivatePaneDirection("Down") })

	-- Customize tab titles (optional)
	wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
		local title = tab.active_pane.title
		if title then
			if tab.is_active then
				return {
					{ Background = { Color = "#009000" } },
					{ Foreground = { Color = "#ffffff" } },
					{ Text = " " .. title .. " " },
				}
			end
			return {
				{ Text = " " .. title .. " " },
			}
		end
	end)
end

return M
