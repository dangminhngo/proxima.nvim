-- https://github.com/folke/which-key.nvim

local M = {}

function M.get(c, config, opts)
  return {
    WhichKey = { link = "Identifier" },
    WhichKeyGroup = { link = "Function" },
    WhichKeyDesc = { link = "Keyword" },
    WhichKeySeperator = { link = "Comment" },
    WhichKeySeparator = { link = "Comment" },
    WhichKeyFloat = { bg = c.palettes.bg0 },
    WhichKeyValue = { link = "Comment" },
  }
end

return M
