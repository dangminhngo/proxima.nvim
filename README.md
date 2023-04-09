<h1 align="center">Proxima</h1>
<br />
<p align="center">
  <a href="https://github.com/dangminhngo/proxima.nvim/stargazers"><img src="https://img.shields.io/github/stars/dangminhngo/proxima.nvim?colorA=1b2125&colorB=73aace&style=for-the-badge"></a>
  <a href="https://github.com/dangminhngo/proxima.nvim/issues"><img src="https://img.shields.io/github/issues/dangminhngo/proxima.nvim?colorA=1b2125&colorB=f08789&style=for-the-badge"></a>
  <a href="https://github.com/dangminhngo/proxima.nvim/contributors"><img src="https://img.shields.io/github/contributors/dangminhngo/proxima.nvim?colorA=1b2125&colorB=83c1ae&style=for-the-badge"></a>
  <a href="https://github.com/dangminhngo/proxima.nvim/network/members"><img src="https://img.shields.io/github/forks/dangminhngo/proxima.nvim?colorA=1b2125&colorB=b3a8f9&style=for-the-badge"></a>
</p>

<p align="center">
  A customizable dark colorscheme for NeoVim 0.6+ with LSP, TreeSitter and a variety of plugins support.
</p>

## Table of contents

- [Requirements](#requirements)
- [Palette](#palette)
- [Installation](#Installation)
- [Setup](#setup)
- [Supported Plugins](#supported-plugins)
- [References](#references)

## Requirements

- Neovim >= 0.5.0

## Palette

proxima saves your eyestraints with a dark background and a pastel palette.

<div align="center">
  <img 
    src="https://raw.githubusercontent.com/dangminhngo/proxima.nvim/main/media/palette.svg"
    alt="Proxima Palette"
  />
</div>

## Installation

You can install proxima via your favorite plugin manager:

- Vim-Plug
```vim
Plug "dangminhngo/proxima.nvim"
```

- Packer
```lua
use { "dangminhngo/proxima.nvim" }
```

For a complete guide, see ```:h proxima.nvim```

## Setup

Place the following code somewhere in your nvim config (after loading plugins)

```lua
require("proxima").setup {}
-- Run command after the setup function
vim.cmd("colorscheme proxima")
```

### Default options

This is an example proxima setup with default values

```lua
require("proxima").setup {
  style = "default",
  accent = "green", -- values: "orange", "teal", "white", "cyan", "green", "magenta", "purple", "red", "blue", "yellow"
  transparent = false, -- if true, background is transparent
  terminal_colors = true, -- if true, set terminal colors
  -- set style: "NONE", "italic", "bold", "underline", "undercurl"

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
  -- set invert colors
  reverse = {
    match_paren = false,
    visual = false,
    search = false,
  },
  palette = {}, -- customize your own palette
  specs = {}, -- customize your own specs
  groups = {}, -- customize your own groups
  -- core
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
  -- enable plugin highlightings
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
```

## Supported Plugins

- [barbecue.nvim](https://github.com/utilyre/barbecue.nvim)
- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [dashboard-nvim](https://github.com/glepnir/dashboard-nvim)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [vim-illuminate](https://github.com/RRethy/vim-illuminate)
- [lightline](https://github.com/itchyny/lightline.vim)
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim)
- [lsp_signature.nvim](https://github.com/ray-x/lsp_signature)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [nvim-notify](https://github.com/rcarriga/nvim-notify)
- [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [nvim-ts-rainbow](https://github.com/p00f/nvim-ts-rainbow)
- [nvim-scrollbar](https://github.com/petertriho/nvim-scrollbar)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [trouble.nvim](https://github.com/folke/trouble.nvim)
- [which-key.nvim](https://github.com/folke/which-key.nvim)

## References

- [EdenEast/nightfox.nvim](https://github.com/EdenEast/nightfox.nvim)
- [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
