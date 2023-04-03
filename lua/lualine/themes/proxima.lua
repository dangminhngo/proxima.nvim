local config = require("proxima.config")
local palette = require("proxima.palette")

local c = palette.load_colors(config)
local pal = c.palettes

local function mode(color)
  return {
    a = { bg = color, fg = pal.bg0, gui = "bold" },
    b = { bg = pal.dark, fg = color },
    c = { bg = pal.dark, fg = pal.fg3 },
  }
end

local proxima = {
  normal = mode(pal.accent),
  insert = mode(pal.green),
  command = mode(pal.magenta),
  visual = mode(pal.yellow),
  replace = mode(pal.red),
  inactive = mode(pal.fg3),
}

return proxima
