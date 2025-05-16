local wezterm = require "wezterm"
local config = {}
local forceDark = 1

function scheme_for_appearance(appearance)
  if forceDark == 1 or appearance:find "Dark" then
    return "Catppuccin Mocha"
  else
    return "Catppuccin Latte"
  end
end

config.background = {
  {
    source = {
	    File = wezterm.home_dir .. '/Pictures/katana-wallhaven.jpg',
    },
    width = '100%',
    hsb = {
      brightness = 0.1,
      hue = 1.0,
      saturation = 1.0,
    },
  },
}

config.color_scheme = scheme_for_appearance(wezterm.gui.get_appearance())

return config
