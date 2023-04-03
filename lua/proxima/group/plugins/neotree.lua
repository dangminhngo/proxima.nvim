-- https://github.com/nvim-neo-tree/neo-tree.lua

local M = {}

function M.get(c, config, opts)
  local pal = c.palettes
  local git = c.specs.git

  return {
    NeoTreeExpander = { fg = pal.bg4 },
    NeoTreeNormal = { fg = pal.fg2, bg = config.transparent and "NONE" or pal.bg0 },
    NeoTreeNormalNC = { fg = pal.fg2, bg = config.transparent and "NONE" or pal.bg0 },
    NeoTreeVertSplit = { link = "VertSplit" },
    NeoTreeIndentMarker = { fg = pal.bg4 },
    NeoTreeTitleBar = { fg = pal.bg, bg = pal.accent },

    NeoTreeDimText = { fg = pal.fg3 },
    NeoTreeRootName = { fg = pal.accent, style = "bold" },
    NeoTreeDirectoryName = { fg = pal.fg2 },
    NeoTreeDirectoryIcon = { fg = pal.accent },
    NeoTreeFileName = { fg = pal.fg },
    NeoTreeFileNameOpened = { fg = pal.accent },
    NeoTreeFloatBorder = { fg = pal.accent },
    NeoTreeFloatTitle = { fg = pal.accent },

    NeoTreeGitAdded = { fg = git.added },
    NeoTreeGitConflict = { fg = git.conflict },
    NeoTreeGitDeleted = { fg = git.removed },
    NeoTreeGitIgnored = { fg = git.ignored },
    NeoTreeGitModified = { fg = pal.cyan },
    NeoTreeGitUnstaged = { fg = pal.comment },
    NeoTreeGitUntracked = { fg = pal.fg3 },
    NeoTreeGitStaged = { fg = pal.accent },
  }
end

return M
