local _config = {
  accent = "blue",
  options = {
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
  },
}

function _config.set_config(user_conf)
  _config = vim.tbl_deep_extend("keep", user_conf or {}, _config)
end

return _config
