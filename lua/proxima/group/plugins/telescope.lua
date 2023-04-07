-- https://github.com/nvim-telescope/telescope.nvim

local M = {}

function M.get(c, config, opts)
  return {
    TelescopeBorder = { fg = c.palette.bg4 },
    TelescopeSelectionCaret = { fg = c.specs.diag.hint },
    TelescopeSelection = { link = "CursorLine" },
    TelescopeMatching = { link = "Search" },
  }
end

return M
