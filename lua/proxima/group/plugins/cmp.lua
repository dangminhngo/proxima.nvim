-- https://github.com/hrsh7th/nvim-cmp

local M = {}

function M.get(c, config, opts)
  local pal = c.palettes
  local syn = c.specs.syntax

  return {
    CmpDocumentation = { fg = pal.fg1, bg = pal.bg0 },
    CmpDocumentationBorder = { fg = pal.bg4, bg = pal.bg0 },

    CmpItemAbbr = { fg = pal.fg1 },
    CmpItemAbbrDeprecated = { fg = syn.dep, style = "strikethrough" },
    CmpItemAbbrMatch = { fg = pal.accent },
    CmpItemAbbrMatchFuzzy = { fg = pal.accent },

    CmpItemKindDefault = { fg = pal.fg3 },
    CmpItemMenu = { link = "Comment" },

    CmpItemKindKeyword = { link = "Identifier" },

    CmpItemKindVariable = { link = "TSVariable" },
    CmpItemKindConstant = { link = "TSConstant" },
    CmpItemKindReference = { link = "Keyword" },
    CmpItemKindValue = { link = "Keyword" },

    CmpItemKindFunction = { link = "Function" },
    CmpItemKindMethod = { link = "Function" },
    CmpItemKindConstructor = { link = "Function" },

    CmpItemKindInterface = { link = "Constant" },
    CmpItemKindEvent = { link = "Constant" },
    CmpItemKindEnum = { link = "Constant" },
    CmpItemKindUnit = { link = "Constant" },

    CmpItemKindClass = { link = "Type" },
    CmpItemKindStruct = { link = "Type" },

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
