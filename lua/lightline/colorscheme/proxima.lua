local config = require("proxima.config").options
local palette = require("proxima.palette")

local c = palette.load_colors(config)
local pal = c.palettes

return {
  normal = {
    left = {
      { pal.dark, pal.accent },
      { pal.accent, pal.dark },
    },
    middle = { { pal.fg, pal.dark } },
    right = { { pal.dark, pal.accent }, { pal.accent, pal.dark } },
    error = { { pal.dark, pal.red } },
    warning = { { pal.dark, pal.yellow } },
  },
  insert = {
    left = { { pal.dark, pal.green }, { pal.green, pal.dark } },
  },
  visual = {
    left = { { pal.dark, pal.magenta }, { pal.magenta, pal.dark } },
  },
  replace = {
    left = { { pal.dark, pal.red }, { pal.red, pal.dark } },
  },
  inactive = {
    left = { { pal.accent, pal.dark }, { pal.dark, pal.fg } },
    middle = { { pal.fg3, pal.dark } },
    right = { { pal.fg3, pal.dark }, { pal.dark, pal.bg4 } },
  },
  tabline = {
    left = { { pal.dark, pal.bg4 }, { pal.dark, pal.bg } },
    middle = { { pal.fg3, pal.dark } },
    right = { { pal.fg3, pal.dark }, { pal.dark, pal.bg4 } },
    tabsel = { { pal.accent, pal.fg }, { pal.dark, pal.bg4 } },
  },
}
