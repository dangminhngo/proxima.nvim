-- https://github.com/folke/trouble.nvim

local M = {}

function M.get(c, config, opts)
  local pal = c.palettes

  return {
    TroubleCount = { link = "CursorLineNr" },
    TroubleError = { link = "DiagnosticError" },
    TroubleNormal = { fg = pal.fg1 },
    TroubleTextInformation = { link = "DiagnosticInfo" },
    TroubleSignWarning = { link = "DiagnosticWarn" },
    TroubleLocation = { fg = pal.fg1 },
    TroubleWarning = { link = "DiagnosticWarn" },
    TroublePreview = { fg = pal.fg1 },
    TroubleTextError = { link = "DiagnosticError" },
    TroubleSignInformation = { link = "DiagnosticInfo" },
    TroubleIndent = { fg = pal.bg2 },
    TroubleSource = { fg = pal.accent },
    TroubleSignHint = { link = "DiagnosticHint" },
    TroubleSignOther = { fg = pal.fg3 },
    TroubleFoldIcon = { link = "CursorLineNr" },
    TroubleTextWarning = { link = "DiagnosticWarn" },
    TroubleCode = { fg = pal.fg1 },
    TroubleInformation = { link = "DiagnosticInfo" },
    TroubleSignError = { link = "DiagnosticError" },
    TroubleFile = { fg = pal.fg1 },
    TroubleHint = { link = "DiagnosticHint" },
    TroubleTextHint = { link = "DiagnosticHint" },
    TroubleText = { fg = pal.fg1 },
  }
end

return M
