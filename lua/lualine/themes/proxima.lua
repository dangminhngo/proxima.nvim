local config = require("proxima.config").options
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

return {
  normal = mode(pal.accent),
  insert = mode(pal.yellow),
  command = mode(pal.magenta),
  visual = mode(pal.blue),
  replace = mode(pal.red),
  inactive = mode(pal.fg3),
}
