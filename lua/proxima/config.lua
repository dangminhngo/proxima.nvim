local M = {}

local defaults = {
  accent = "blue",
  palettes = {},
  specs = {},
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
