local config = require("proxima.config").options
local palette = require("proxima.palette")

local c = palette.load_colors(config)
local pal = c.palette

local function mode(color)
  return {
    a = { bg = color, fg = pal.dark, gui = "bold" },
    b = { bg = pal.fg, fg = pal.dark },
    c = { bg = pal.dark, fg = pal.black },
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
