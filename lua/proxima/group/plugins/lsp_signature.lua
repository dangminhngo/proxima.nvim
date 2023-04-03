-- https://github.com/ray-x/lsp_signature.nvim

local M = {}

function M.get(c, config, opts)
  local pal = c.palettes
  local syn = c.specs.syntax

  return {
    LspSignatureActiveParameter = { fg = pal.bg, bg = syn.param },
  }
end

return M
