local wezterm = require('wezterm')
local config = wezterm.config_builder()

config.font_size = 11
config.font = wezterm.font('MesloLGS NF')
config.color_scheme = 'tokyonight_night'
config.initial_cols = 180
config.initial_rows = 55

config.keys = {
  {
    key = 'w',
    mods = 'CMD',
    action = wezterm.action.CloseCurrentPane { confirm = false },
  }
}


return config
