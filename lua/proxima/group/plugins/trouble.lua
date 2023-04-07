-- https://github.com/folke/trouble.nvim

local M = {}

function M.get(c, config, opts)
  local pal = c.palette

  return {
    TroubleCount = { link = "CursorLineNr" },
    TroubleError = { link = "DiagnosticError" },
    TroubleNormal = { fg = pal.fg },
    TroubleTextInformation = { link = "DiagnosticInfo" },
    TroubleSignWarning = { link = "DiagnosticWarn" },
    TroubleLocation = { fg = pal.fg },
    TroubleWarning = { link = "DiagnosticWarn" },
    TroublePreview = { fg = pal.fg },
    TroubleTextError = { link = "DiagnosticError" },
    TroubleSignInformation = { link = "DiagnosticInfo" },
    TroubleIndent = { fg = pal.bg2 },
    TroubleSource = { fg = pal.accent },
    TroubleSignHint = { link = "DiagnosticHint" },
    TroubleSignOther = { fg = pal.fg3 },
    TroubleFoldIcon = { link = "CursorLineNr" },
    TroubleTextWarning = { link = "DiagnosticWarn" },
    TroubleCode = { fg = pal.fg },
    TroubleInformation = { link = "DiagnosticInfo" },
    TroubleSignError = { link = "DiagnosticError" },
    TroubleFile = { fg = pal.fg },
    TroubleHint = { link = "DiagnosticHint" },
    TroubleTextHint = { link = "DiagnosticHint" },
    TroubleText = { fg = pal.fg },
  }
end

return M
