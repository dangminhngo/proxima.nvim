local M = {}

local palettes = {
  cool = {
    fg = "#ccd5d9",
    bg = "#262f32",
    red = "#de6a6d",
    green = "#a4c76f",
    yellow = "#e3dd5f",
    blue = "#6090db",
    magenta = "#a57cde",
    cyan = "#66c5cc",
    teal = "#4dd6a4",
    orange = "#e8964f",
    pink = "#db70c6",
  },
  warm = {
    fg = "#dbceb3",
    bg = "#262f32",
    red = "#e67e80",
    green = "#a4c76f",
    yellow = "#d1cc66",
    blue = "#678dc9",
    magenta = "#a183cc",
    cyan = "#76bfc4",
    teal = "#6fc7a4",
    orange = "#d69760",
    pink = "#c975b9",
  },
}

M.defaults = {
  style = "warm",
  accent = "green",
  specs = {
    syntax = {
      attr = "yellow", -- HTML tag attribues
      bool = "orange", -- Boolean
      bracket = "fg2", -- Brackets and Punctuation
      builtin0 = "red", -- Builtin variable
      builtin1 = "yellow", -- Builtin type
      builtin2 = "orange", -- Builtin const
      builtin3 = "red", -- For keywords: return, constructor
      comment = "comment", -- Comment
      conditional = "pink", -- Conditional and loop
      const = "orange", -- Constants, imports and booleans
      constructor = "red", -- Constructor, JSX elements
      dep = "black", -- Deprecated
      field = "teal", -- Field, Property
      func = "blue", -- Functions and Titles
      ident = "pink", -- Identifiers
      keyword = "magenta", -- Keywords
      number = "orange", -- Numbers
      operator = "magenta", -- Operators
      param = "red", -- Params
      preproc = "magenta", -- PreProc
      regex = "orange", -- Regex
      statement = "magenta", -- Statements
      string = "green", -- Strings
      delimiter = "teal", -- Tag delimiter
      type = "yellow", -- Types
      variable = "fg", -- Variables
    },
    diag = {
      error = "red",
      warn = "yellow",
      info = "cyan",
      hint = "green",
    },
    git = {
      added = "cyan",
      removed = "red",
      changed = "yellow",
      conflict = "orange",
      ignored = "comment",
    },
    diff = {
      add = "green",
      delete = "red",
      change = "yellow",
      text = "cyan",
    },
  },
  group = {},
  transparent = false,
  terminal_colors = true,
  styles = {
    attributes = { italic = true },
    booleans = { italic = true },
    comments = { italic = true },
    functions = {},
    keywords = {},
    numbers = {},
    parameters = {},
    strings = {},
    types = {},
    variables = {},
  },
  reverse = {
    match_paren = false,
    visual = false,
    search = false,
  },
  core = {
    editor = true,
    syntax = true,
    diagnostic = {
      enabled = true,
      background = false,
    },
    lsp = true,
    treesitter = true,
  },
  plugins = {
    alpha = false,
    barbar = false,
    bufferline = false,
    dashboard = false,
    diff = false,
    gitsigns = false,
    hop = false,
    indent_blankline = false,
    lazy = false,
    leap = false,
    lspsaga = false,
    mini = false,
    neo_tree = false,
    nvim_cmp = false,
    nvim_navic = false,
    nvim_notify = false,
    nvim_tree = false,
    nvim_ts_rainbow = false,
    nvim_ts_rainbow2 = false,
    nvim_scrollbar = false,
    telescope = false,
    trouble = false,
    vim_gitgutter = false,
    vim_illuminate = false,
    vim_sneak = false,
    which_key = false,
    yanky = false,
  },
}

M.options = {}

M.setup = function(options)
  M.options = vim.tbl_deep_extend("force", {}, M.defaults, options or {})
  M.options.palette = palettes[M.options.style]
end

M.setup()

return M
