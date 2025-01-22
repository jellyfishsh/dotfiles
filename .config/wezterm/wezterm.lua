local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.window_decorations = "RESIZE"
config.enable_tab_bar = false
config.font = wezterm.font("Fira Code")
config.font_size = 18.0

config.color_scheme = "Chalkboard (Gogh)"

return config
