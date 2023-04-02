local config = require("proxima.config")
local palette = require("proxima.palette")

local c = palette.load_colors(config.accent, config)
local pal = c.palettes

local function gen_mode(color)
  return {
    a = { bg = color, fg = pal.bg0, gui = "bold" },
    b = { bg = pal.dark, fg = pal.accent },
    c = { bg = pal.dark, fg = pal.fg3 },
  }
end

local proxima = {
  normal = gen_mode(pal.accent),
  insert = gen_mode(pal.yellow),
  command = gen_mode(pal.purple),
  visual = gen_mode(pal.magenta),
  replace = gen_mode(pal.red),
  inactive = gen_mode(pal.fg3),
}

return proxima
