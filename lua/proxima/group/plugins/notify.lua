-- https://github.com/rcarriga/nvim-notify
local M = {}

function M.get(c, config, opts)
  local pal = c.palettes
  local syn = c.specs.syntax
  local diag = c.specs.diag

  return {
    NotifyERRORBorder = { fg = diag.error },
    NotifyWARNBorder = { fg = diag.warn },
    NotifyINFOBorder = { fg = diag.info },
    NotifyDEBUGBorder = { fg = diag.hint },
    NotifyTRACEBorder = { fg = pal.bg4 },

    NotifyERRORTitle = { fg = diag.error },
    NotifyWARNTitle = { fg = diag.warn },
    NotifyINFOTitle = { fg = diag.info },
    NotifyDEBUGTitle = { fg = diag.hint },
    NotifyTRACETitle = { fg = syn.comment },

    NotifyERRORIcon = { link = "NotifyERRORTitle" },
    NotifyWARNIcon = { link = "NotifyWARNTitle" },
    NotifyINFOIcon = { link = "NotifyINFOTitle" },
    NotifyDEBUGIcon = { link = "NotifyDEBUGTitle" },
    NotifyTRACEIcon = { link = "NotifyTRACETitle" },

    NotifyERRORBody = { fg = pal.fg, bg = pal.dark },
    NotifyWARNBody = { fg = pal.fg, bg = pal.dark },
    NotifyINFOBody = { fg = pal.fg, bg = pal.dark },
    NotifyDEBUGBody = { fg = pal.fg, bg = pal.dark },
    NotifyTRACEBody = { fg = pal.fg, bg = pal.dark },
  }
end

return M
