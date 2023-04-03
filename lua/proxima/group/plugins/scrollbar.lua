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

    ScrollbarSearchHandle = { fg = pal.visual, bg = pal.bg },
    ScrollbarSearch = { fg = pal.visual, bg = pal.bg },
    ScrollbarErrorHandle = { fg = diag.error, bg = pal.bg },
    ScrollbarError = { fg = diag.error, bg = pal.bg },
    ScrollbarWarnHandle = { fg = diag.warn, bg = pal.bg },
    ScrollbarWarn = { fg = diag.warn, bg = pal.bg },
    ScrollbarInfoHandle = { fg = diag.info, bg = pal.bg },
    ScrollbarInfo = { fg = diag.info, bg = pal.bg },
    ScrollbarHintHandle = { fg = diag.hint, bg = pal.bg },
    ScrollbarHint = { fg = diag.hint, bg = pal.bg },
    ScrollbarMiscHandle = { fg = pal.fg0, bg = pal.bg },
    ScrollbarMisc = { fg = pal.fg0, bg = pal.bg },

    ScrollbarGitAddHandle = { fg = git.added, bg = pal.bg },
    ScrollbarGitAdd = { fg = git.added, bg = pal.bg },
    ScrollbarGitChangeHandle = { fg = git.changed, bg = pal.bg },
    ScrollbarGitChange = { fg = git.changed, bg = pal.bg },
    ScrollbarGitDeleteHandle = { fg = git.removed, bg = pal.bg },
    ScrollbarGitDelete = { fg = git.removed, bg = pal.bg },
  }
end

return M
