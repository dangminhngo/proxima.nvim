local M = {}

local palettes = {
  default = {
    fg = "#b3b8d1",
    bg = "#1d2030",
    red = "#f57c7e",
    green = "#a4c76f",
    yellow = "#eace60",
    blue = "#619af5",
    magenta = "#9d78d1",
    cyan = "#42b8e6",
    teal = "#72c2b2",
    orange = "#e39d5f",
    pink = "#d983d7",
  },
  midnight = {
    fg = "#dbceb3",
    bg = "#242d2f",
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
  style = "default",
  accent = "blue",
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
  palette = {},
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
      param = "yellow", -- Params
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
      added = "green",
      removed = "red",
      changed = "yellow",
      conflict = "orange",
      ignored = "pink",
    },
    diff = {
      add = "green",
      delete = "red",
      change = "yellow",
      text = "cyan",
    },
  },
  groups = {},
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
    alpha = true,
    barbar = true,
    bufferline = true,
    dashboard = true,
    diff = true,
    gitsigns = true,
    hop = true,
    indent_blankline = true,
    lazy = true,
    leap = true,
    lspsaga = true,
    mini = true,
    neo_tree = true,
    nvim_cmp = true,
    nvim_navic = true,
    nvim_notify = true,
    nvim_tree = true,
    nvim_ts_rainbow = true,
    nvim_ts_rainbow2 = true,
    nvim_scrollbar = true,
    telescope = true,
    trouble = true,
    vim_gitgutter = true,
    vim_illuminate = true,
    vim_sneak = true,
    which_key = true,
    yanky = true,
  },
}

M.options = {}

M.setup = function(options)
  M.options = vim.tbl_deep_extend("force", {}, M.defaults, options or {})
  M.options.palette = palettes[M.options.style]
end

M.setup()

return M
