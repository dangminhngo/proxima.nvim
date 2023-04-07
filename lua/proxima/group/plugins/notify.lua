-- https://github.com/rcarriga/nvim-notify
local M = {}

function M.get(c, config, opts)
  local pal = c.palette
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
  }
end

return M
