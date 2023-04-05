-- https://github.com/hrsh7th/nvim-cmp

local M = {}

function M.get(c, config, opts)
  local pal = c.palettes
  local syn = c.specs.syntax

  return {
    CmpDocumentation = { fg = pal.fg, bg = pal.bg0 },
    CmpDocumentationBorder = { fg = pal.bg2, bg = pal.bg0 },

    CmpItemAbbr = { fg = pal.fg },
    CmpItemAbbrDeprecated = { fg = syn.dep, style = "strikethrough" },
    CmpItemAbbrMatch = { fg = pal.accent },
    CmpItemAbbrMatchFuzzy = { fg = pal.accent },

    CmpItemKindDefault = { fg = pal.fg3 },
    CmpItemMenu = { link = "Comment" },

    CmpItemKindVariable = { link = "TSVariable" },
    CmpItemKindConstant = { link = "TSConstant" },
    CmpItemKindKeyword = { link = "Keyword" },
    CmpItemKindReference = { link = "Keyword" },
    CmpItemKindValue = { link = "Keyword" },
    CmpItemKindFunction = { link = "Function" },
    CmpItemKindMethod = { link = "Function" },
    CmpItemKindConstructor = { link = "Function" },
    CmpItemKindEvent = { link = "Constant" },
    CmpItemKindUnit = { link = "Constant" },
    CmpItemKindInterface = { link = "Type" },
    CmpItemKindClass = { link = "Type" },
    CmpItemKindStruct = { link = "Type" },
    CmpItemKindEnum = { link = "Type" },
    CmpItemKindModule = { link = "TSNamespace" },
    CmpItemKindProperty = { link = "TSProperty" },
    CmpItemKindField = { link = "TSField" },
    CmpItemKindTypeParameter = { link = "TSField" },
    CmpItemKindEnumMember = { link = "TSField" },
    CmpItemKindOperator = { link = "Operator" },
    CmpItemKindSnippet = { fg = pal.fg2 },
  }
end

return M
