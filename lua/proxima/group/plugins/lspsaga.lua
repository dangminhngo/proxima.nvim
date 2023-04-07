-- https://github.com/glepnir/lspsaga.nvim

local M = {}

function M.get(c, config, opts)
  local pal = c.palette
  local diag = c.specs.diag

  return {
    LspFloatWinNormal = { bg = pal.bg0 },
    LspFloatWinBorder = { fg = pal.fg3 },
    LspSagaBorderTitle = { link = "Title" },
    LspSagaHoverBorder = { fg = pal.fg3 },
    LspSagaRenameBorder = { fg = pal.fg3 },
    LspSagaDefPreviewBorder = { fg = pal.fg3 },
    LspSagaCodeActionBorder = { fg = pal.fg3 },
    LspSagaFinderSelection = { fg = pal.search },
    LspSagaCodeActionTitle = { link = "Title" },
    LspSagaCodeActionContent = { link = "String" },
    LspSagaSignatureHelpBorder = { fg = diag.error },
    -- ReferencesCount            = { fg = cp.pink },
    -- DefinitionCount            = { fg = cp.pink },
    -- DefinitionIcon             = { fg = cp.blue },
    -- ReferencesIcon             = { fg = cp.blue },
    -- TargetWord                 = { fg = cp.flamingo },
  }
end

return M
