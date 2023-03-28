-- https://github.com/kyazdani42/nvim-tree.lua

local M = {}

function M.get(c, config, opts)
  local pal = c.palettes
  local syn = c.specs.syntax
  local git = c.specs.git

  return {
    NvimTreeNormal = { fg = pal.fg2, bg = config.transparent and "NONE" or pal.bg0 },
    NvimTreeVertSplit = { link = "VertSplit" },
    NvimTreeIndentMarker = { fg = pal.bg2 },

    NvimTreeRootFolder = { fg = pal.accent, style = "bold" },
    NvimTreeFolderName = { fg = pal.fg2 },
    NvimTreeFolderIcon = { fg = pal.accent },
    NvimTreeOpenedFolderName = { fg = pal.accent },
    NvimTreeEmptyFolderName = { fg = syn.dep },
    NvimTreeSymlink = { fg = pal.magenta },
    NvimTreeSpecialFile = { fg = pal.blue },
    NvimTreeImageFile = { fg = pal.white },
    NvimTreeOpenedFile = { fg = pal.white }, -- TODO: not working

    NvimTreeGitDeleted = { fg = git.removed },
    NvimTreeGitDirty = { fg = git.changed },
    NvimTreeGitMerge = { fg = git.confict },
    NvimTreeGitNew = { fg = git.add },
    NvimTreeGitRenamed = { link = "NvimTreeGitDeleted" },
    NvimTreeGitStaged = { link = "NvimTreeGitStaged" },
  }
end

return M
