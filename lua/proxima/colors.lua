local color = require("proxima.lib.color")

local M = {}

local default_bg = "#1f2830"

--- Generate colors
-- @param accent string
-- @param config table
function M.generate(accent, config)
  local p = config.options.palettes
  local s = config.options.specs
  local bg = p.bg or default_bg

  local palettes = {
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
    red = "#f36a6f",
    green = "#8fd780",
    yellow = "#e6dd90",
    blue = "#62b1ff",
    magenta = "#b28ff5",
    cyan = "#5ddae2",
    teal = "#4fd5b5",
    orange = "#efaa6f",
    pink = "#e67aca",
  }

  palettes.accent = palettes[accent]
  palettes.visual = color.lighten(palettes[accent], 64)
  palettes.search = color.darken(palettes[accent], 32)

  local specs = {
    syntax = {
      attr = palettes.yellow, -- HTML tag attribues
      bool = palettes.orange, -- Boolean
      bracket = palettes.fg2, -- Brackets and Punctuation
      builtin0 = palettes.red, -- Builtin variable
      builtin1 = palettes.yellow, -- Builtin type
      builtin2 = palettes.orange, -- Builtin const
      builtin3 = palettes.red, -- For keywords: return, constructor
      comment = palettes.comment, -- Comment
      conditional = palettes.pink, -- Conditional and loop
      const = palettes.orange, -- Constants, imports and booleans
      constructor = palettes.red, -- Constructor, JSX elements
      dep = palettes.black, -- Deprecated
      field = palettes.teal, -- Field, Property
      func = palettes.blue, -- Functions and Titles
      ident = palettes.pink, -- Identifiers
      keyword = palettes.magenta, -- Keywords
      number = palettes.orange, -- Numbers
      operator = palettes.magenta, -- Operators
      param = palettes.red, -- Params
      preproc = palettes.magenta, -- PreProc
      regex = palettes.orange, -- Regex
      statement = palettes.magenta, -- Statements
      string = palettes.green, -- Strings
      delimiter = palettes.teal, -- Tag delimiter
      type = palettes.yellow, -- Types
      variable = palettes.fg1, -- Variables
    },
    diag = {
      error = palettes.red,
      warn = palettes.yellow,
      info = palettes.cyan,
      hint = palettes.green,
    },
    git = {
      add = palettes.cyan,
      removed = palettes.red,
      changed = palettes.yellow,
      conflict = palettes.orange,
      ignored = palettes.comment,
    },
    diff = {
      add = palettes.green,
      delete = palettes.red,
      change = palettes.yellow,
      text = palettes.cyan,
    }
  }

  return {
    palettes = vim.tbl_deep_extend("force", palettes, p),
    specs = vim.tbl_deep_extend("force", specs, s)
  }
end

return M
