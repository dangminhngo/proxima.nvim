-- https://github.com/glepnir/dashboard-nvim

local M = {}

function M.get(c, config, opts)
  local pal = c.palette
  local syn = c.specs.syntax

  return {
    DashboardShortCut = { link = "Keyword" },
    DashboardHeader = { fg = pal.accent },
    DashboardCenter = { fg = syn.func },
    DashboardFooter = { fg = syn.const, style = "italic" },
  }
end

return M
