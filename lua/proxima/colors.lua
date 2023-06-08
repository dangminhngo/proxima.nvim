local color = require("proxima.lib.color")
local util = require("proxima.util")

local M = {}

--- Generate colors
-- @param accent string
-- @param config table
function M.generate(config)
  local bg = config.palette.bg
  local fg = config.palette.fg

  local palette = vim.tbl_deep_extend("keep", config.palette, {
    none = "NONE",
    dark = color.darken(bg, 32),
    bg0 = color.darken(bg, 16),
    bg2 = color.lighten(bg, 4),
    bg3 = color.lighten(bg, 8),
    bg4 = color.lighten(bg, 12),
    fg0 = color.lighten(fg, 56),
    fg2 = color.darken(fg, 16),
    fg3 = color.darken(fg, 32),
    fg4 = color.darken(fg, 48),
    comment = color.lighten(bg, 32),
    black = color.lighten(bg, 16),
    white = color.lighten(fg, 64),
  })

  palette.accent = palette[config.accent]
  palette.visual = color.lighten(palette.accent, 64)
  palette.search = color.darken(palette.accent, 32)

  local syn = config.specs.syntax
  local diag = config.specs.diag
  local git = config.specs.git
  local diff = config.specs.diff

  local g = util.get_color(palette)
  local specs = {
    syntax = {
      attr = g(syn.attr), -- HTML tag attribues
      bool = g(syn.bool), -- Boolean
      bracket = g(syn.bracket), -- Brackets and Punctuation
      builtin0 = g(syn.builtin0), -- Builtin variable
      builtin1 = g(syn.builtin1), -- Builtin type
      builtin2 = g(syn.builtin2), -- Builtin const
      builtin3 = g(syn.builtin3), -- For keywords: return, constructor
      comment = g(syn.comment), -- Comment
      conditional = g(syn.conditional), -- Conditional and loop
      const = g(syn.const), -- Constants, imports and booleans
      constructor = g(syn.constructor), -- Constructor, JSX elements
      dep = g(syn.dep), -- Deprecated
      field = g(syn.field), -- Field, Property
      func = g(syn.func), -- Functions and Titles
      ident = g(syn.ident), -- Identifiers
      keyword = g(syn.keyword), -- Keywords
      number = g(syn.number), -- Numbers
      operator = g(syn.operator), -- Operators
      param = g(syn.param), -- Params
      preproc = g(syn.preproc), -- PreProc
      regex = g(syn.regex), -- Regex
      statement = g(syn.statement), -- Statements
      string = g(syn.string), -- Strings
      delimiter = g(syn.delimiter), -- Tag delimiter
      type = g(syn.type), -- Types
      variable = g(syn.variable), -- Variables
    },
    diag = {
      error = g(diag.error),
      warn = g(diag.warn),
      info = g(diag.info),
      hint = g(diag.hint),
    },
    git = {
      added = g(git.added),
      removed = g(git.removed),
      changed = g(git.changed),
      conflict = g(git.conflict),
      ignored = g(git.ignored),
    },
    diff = {
      add = g(diff.add),
      delete = g(diff.delete),
      change = g(diff.change),
      text = g(diff.text),
    },
  }

  -- vim.pretty_print(palette)
  -- vim.pretty_print(specs)

  return {
    palette = palette,
    specs = specs,
  }
end

return M
