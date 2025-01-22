local wezterm = require("wezterm")
local kanagawa = require("colors/kanagawa")
local kanagawa_dragon = require("colors/kanagawa-dragon")

local config = wezterm.config_builder()

config.window_decorations = "RESIZE"
config.enable_tab_bar = false
config.font = wezterm.font("Fira Code")
config.font_size = 18.0

config.colors = kanagawa.colors

return config
