local color = require("proxima.lib.color")

local M = {}

--- Generate colors
-- @param accent string
-- @param config table
function M.generate(config)
  local bg = config.palettes.bg
  local palettes = vim.tbl_deep_extend("keep", config.palettes, {
    bg0 = color.darken(bg, 16),
    bg1 = bg,
    bg2 = color.lighten(bg, 6),
    bg3 = color.lighten(bg, 12),
    bg4 = color.lighten(bg, 18),
    fg0 = color.lighten(bg, 96),
    fg1 = color.lighten(bg, 88),
    fg2 = color.lighten(bg, 72),
    fg3 = color.lighten(bg, 64),
    fg4 = color.lighten(bg, 56),
    dark = color.darken(bg, 32),
    comment = color.lighten(bg, 40),
    black = color.lighten(bg, 24),
    white = color.lighten(bg, 96),
  })

  palettes.accent = palettes[config.accent]
  palettes.visual = color.lighten(palettes[config.accent], 64)
  palettes.search = color.darken(palettes[config.accent], 32)

  local syn = config.specs.syntax
  local diag = config.specs.diag
  local git = config.specs.git
  local diff = config.specs.diff

  local specs = {
    syntax = {
      attr = palettes[syn.attr], -- HTML tag attribues
      bool = palettes[syn.bool], -- Boolean
      bracket = palettes[syn.bracket], -- Brackets and Punctuation
      builtin0 = palettes[syn.builtin0], -- Builtin variable
      builtin1 = palettes[syn.builtin1], -- Builtin type
      builtin2 = palettes[syn.builtin2], -- Builtin const
      builtin3 = palettes[syn.builtin3], -- For keywords: return, constructor
      comment = palettes[syn.comment], -- Comment
      conditional = palettes[syn.conditional], -- Conditional and loop
      const = palettes[syn.const], -- Constants, imports and booleans
      constructor = palettes[syn.constructor], -- Constructor, JSX elements
      dep = palettes[syn.dep], -- Deprecated
      field = palettes[syn.field], -- Field, Property
      func = palettes[syn.func], -- Functions and Titles
      ident = palettes[syn.ident], -- Identifiers
      keyword = palettes[syn.keyword], -- Keywords
      number = palettes[syn.number], -- Numbers
      operator = palettes[syn.operator], -- Operators
      param = palettes[syn.param], -- Params
      preproc = palettes[syn.preproc], -- PreProc
      regex = palettes[syn.regex], -- Regex
      statement = palettes[syn.statement], -- Statements
      string = palettes[syn.string], -- Strings
      delimiter = palettes[syn.delimiter], -- Tag delimiter
      type = palettes[syn.type], -- Types
      variable = palettes[syn.variable], -- Variables
    },
    diag = {
      error = palettes[diag.error],
      warn = palettes[diag.warn],
      info = palettes[diag.info],
      hint = palettes[diag.hint],
    },
    git = {
      added = palettes[git.added],
      removed = palettes[git.removed],
      changed = palettes[git.changed],
      conflict = palettes[git.conflict],
      ignored = palettes[git.ignored],
    },
    diff = {
      add = palettes[diff.add],
      delete = palettes[diff.delete],
      change = palettes[diff.change],
      text = palettes[diff.text],
    },
  }

  return {
    palettes = palettes,
    specs = specs,
  }
end

return M
