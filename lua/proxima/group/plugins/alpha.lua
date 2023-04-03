-- https://github.com/goolord/alpha-nvim

local M = {}

function M.get(c, config, opts)
  local pal = c.palettes
  local syn = c.specs.syntax

  return {
    AlphaShortcut = { fg = pal.blue },
    AlphaHeader = { fg = pal.accent },
    AlphaHeaderLabel = { fg = pal.orange },
    AlphaFooter = { fg = pal.magenta, style = "italic" },
    AlphaButtons = { fg = pal.fg },
  }
end

return M
