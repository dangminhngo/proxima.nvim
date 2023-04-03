local M = {}

local defaults = {
  accent = "blue",
  palettes = {
    bg = "#1f2830",
    red = "#f36a6f",
    green = "#8fd780",
    yellow = "#e6dd90",
    blue = "#62b1ff",
    magenta = "#b28ff5",
    cyan = "#5ddae2",
    teal = "#4fd5b5",
    orange = "#efaa6f",
    pink = "#e67aca",
  },
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
      variable = "fg1", -- Variables
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
    attributes = "NONE",
    booleans = "NONE",
    comments = "NONE",
    functions = "NONE",
    keywords = "NONE",
    numbers = "NONE",
    parameters = "NONE",
    strings = "NONE",
    types = "NONE",
    variables = "NONE",
  },
  inverse = {
    match_paren = false,
    visual = false,
    search = false,
  },
  plugins = {
    alpha = true,
    bufferline = true,
    cmp = true,
    dashboard = true,
    diagnostic = {
      enable = true,
      background = true,
    },
    gitsigns = true,
    illuminate = true,
    lspsaga = true,
    lsp_signature = true,
    notify = true,
    neotree = true,
    nvimtree = true,
    scrollbar = true,
    telescope = true,
    treesitter = true,
    tsrainbow = true,
    whichkey = true,
  },
}

M.config = {}

M.setup = function(options)
  M.config = vim.tbl_deep_extend("force", {}, defaults, options or {})
end

return M
