-- https://github.com/p00f/nvim-ts-rainbow

local M = {}

function M.get(c, config, opts)
  local pal = c.palette

  return {
    rainbowcol1 = { fg = pal.red },
    rainbowcol2 = { fg = pal.yellow },
    rainbowcol3 = { fg = pal.green },
    rainbowcol4 = { fg = pal.blue },
    rainbowcol5 = { fg = pal.cyan },
    rainbowcol6 = { fg = pal.magenta },
    rainbowcol7 = { fg = pal.pink },
  }
end

return M
