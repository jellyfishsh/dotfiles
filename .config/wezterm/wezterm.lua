local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.window_decorations = "RESIZE"
config.enable_tab_bar = false

-- Setting the font and the colorscheme comes later



return config
