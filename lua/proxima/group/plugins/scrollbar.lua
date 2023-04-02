-- https://github.com/petertriho/nvim-scrollbar

local M = {}

function M.get(c, config, opts)
  local pal = c.palettes
  local syn = c.specs.syntax
  local diag = c.specs.diag
  local git = c.specs.git

  return {
    ScrollbarHandle = { fg = pal.fg0, bg = syn.comment },
    ScrollbarCursorHandle = { fg = pal.accent, bg = pal.accent },
    ScrollbarCursor = { fg = pal.bg4, bg = syn.bg4 },

    ScrollbarSearchHandle = { fg = pal.visual, bg = pal.bg1 },
    ScrollbarSearch = { fg = pal.visual, bg = pal.bg1 },
    ScrollbarErrorHandle = { fg = diag.error, bg = pal.bg1 },
    ScrollbarError = { fg = diag.error, bg = pal.bg1 },
    ScrollbarWarnHandle = { fg = diag.warn, bg = pal.bg1 },
    ScrollbarWarn = { fg = diag.warn, bg = pal.bg1 },
    ScrollbarInfoHandle = { fg = diag.info, bg = pal.bg1 },
    ScrollbarInfo = { fg = diag.info, bg = pal.bg1 },
    ScrollbarHintHandle = { fg = diag.hint, bg = pal.bg1 },
    ScrollbarHint = { fg = diag.hint, bg = pal.bg1 },
    ScrollbarMiscHandle = { fg = pal.fg0, bg = pal.bg1 },
    ScrollbarMisc = { fg = pal.fg0, bg = pal.bg1 },

    ScrollbarGitAddHandle = { fg = git.added, bg = pal.bg1 },
    ScrollbarGitAdd = { fg = git.added, bg = pal.bg1 },
    ScrollbarGitChangeHandle = { fg = git.changed, bg = pal.bg1 },
    ScrollbarGitChange = { fg = git.changed, bg = pal.bg1 },
    ScrollbarGitDeleteHandle = { fg = git.removed, bg = pal.bg1 },
    ScrollbarGitDelete = { fg = git.removed, bg = pal.bg1 },
  }
end

return M
