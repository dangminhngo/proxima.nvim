-- https://github.com/akinsho/bufferline.nvim

local M = {}

function M.get(c, config, opts)
  local pal = c.palettes
  local syn = c.specs.syntax
  local diag = c.specs.diag

  return {
    BufferLineFill = { bg = pal.dark },
    BufferLineBackground = { fg = syn.comment, bg = pal.bg0 },
    BufferLineBufferVisible = { fg = pal.fg3, bg = pal.bg0 },
    BufferLineBufferSelected = { fg = pal.fg0, bg = pal.bg },
    BufferLineTab = { fg = pal.bg3, bg = pal.bg0 },
    BufferLineTabSelected = { fg = pal.bg0, bg = pal.bg },
    BufferLineTabClose = { fg = diag.error, bg = pal.bg0 },
    BufferLineIndicatorSelected = { fg = pal.bg, bg = pal.bg },
    BufferLineSeparator = { fg = pal.bg4, bg = pal.bg0 },
    BufferLineSeparatorVisible = { fg = pal.bg4, bg = pal.bg0 },
    BufferLineSeparatorSelected = { fg = pal.bg4, bg = pal.bg },
    BufferLineCloseButton = { fg = diag.error, bg = pal.bg0 },
    BufferLineCloseButtonVisible = { fg = diag.error, bg = pal.bg0 },
    BufferLineCloseButtonSelected = { fg = diag.error, bg = pal.bg },
    BufferLineModified = { fg = diag.hint, bg = pal.bg0 },
    BufferLineModifiedVisible = { fg = diag.hint, bg = pal.bg0 },
    BufferLineModifiedSelected = { fg = diag.hint, bg = pal.bg },
    BufferLineError = { fg = diag.error, bg = pal.bg0 },
    BufferLineErrorDiagnostic = { fg = diag.error, bg = pal.bg0 },
  }
end

return M
