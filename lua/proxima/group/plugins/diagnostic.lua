local M = {}

function M.get(c, config, opts)
  local pal = c.palettes
  local diag = c.specs.diag

  return {
    DiagnosticError = { fg = diag.error },
    DiagnosticWarn = { fg = diag.warn },
    DiagnosticInfo = { fg = diag.info },
    DiagnosticHint = { fg = diag.hint },

    DiagnosticSignError = { link = "DiagnosticError" },
    DiagnosticSignWarn = { link = "DiagnosticWarn" },
    DiagnosticSignInfo = { link = "DiagnosticInfo" },
    DiagnosticSignHint = { link = "DiagnosticHint" },

    DiagnosticVirtualTextError = { fg = pal.bg1, bg = opts.background and diag.error or "NONE" },
    DiagnosticVirtualTextWarn = { fg = pal.bg1, bg = opts.background and diag.warn or "NONE" },
    DiagnosticVirtualTextInfo = { fg = pal.bg1, bg = opts.background and diag.info or "NONE" },
    DiagnosticVirtualTextHint = { fg = pal.bg1, bg = opts.background and diag.hint or "NONE" },

    DiagnosticUnderlineError = { style = "undercurl", sp = diag.error },
    DiagnosticUnderlineWarn = { style = "undercurl", sp = diag.warn },
    DiagnosticUnderlineInfo = { style = "undercurl", sp = diag.info },
    DiagnosticUnderlineHint = { style = "undercurl", sp = diag.hint },
  }
end

return M
