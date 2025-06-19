local wezterm = require 'wezterm'
local config = {}
local theme = require('lua/rose-pine').moon

config.font = wezterm.font('JetBrains Mono', { weight = 'Bold', italic = false })

config.colors = theme.colors()
config.window_frame = theme.window_frame() -- needed only if using fancy tab bar

return config


