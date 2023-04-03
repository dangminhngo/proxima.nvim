-- https://github.com/goolord/alpha-nvim

local M = {}

function M.get(c, config, opts)
  local pal = c.palettes
  local syn = c.specs.syntax

  return {
    AlphaShortcut = { fg = pal.orange },
    AlphaHeader = { fg = pal.accent },
    AlphaHeaderLabel = { fg = pal.orange },
    AlphaFooter = { fg = c.accent, style = "italic" },
    AlphaButtons = { fg = c.teal },
  }
end

return M
