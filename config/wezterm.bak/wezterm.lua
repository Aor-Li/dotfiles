local wezterm = require 'wezterm'
local config = wezterm.config_builder()

require('appearance').apply_to_config(config)
require('function').apply_to_config(config)
require('keymap').apply_to_config(config)

return config