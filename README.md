<h1 align="center">Proxima.nvim</h1>

<br>

<div align="center">
  <img src="https://github.com/dangminhngo/proxima.nvim/blob/main/media/logo.png" width="128px" />
</div>

<br>

<div align="center">
    <a href="https://github.com/dangminhngo/proxima.nvim/releases/latest">
      <img alt="Latest release" src="https://img.shields.io/github/v/release/dangminhngo/proxima.nvim?style=for-the-badge&logo=starship&color=C9CBFF&logoColor=D9E0EE&labelColor=302D41&include_prerelease&sort=semver" />
    </a>
    <a href="https://github.com/dangminhngo/proxima.nvim/pulse">
      <img alt="Last commit" src="https://img.shields.io/github/last-commit/dangminhngo/proxima.nvim?style=for-the-badge&logo=starship&color=8bd5ca&logoColor=D9E0EE&labelColor=302D41"/>
    </a>
    <a href="https://github.com/dangminhngo/proxima.nvim/blob/main/LICENSE">
      <img alt="License" src="https://img.shields.io/github/license/dangminhngo/proxima.nvim?style=for-the-badge&logo=starship&color=ee999f&logoColor=D9E0EE&labelColor=302D41" />
    </a>
    <a href="https://github.com/dangminhngo/proxima.nvim/stargazers">
      <img alt="Stars" src="https://img.shields.io/github/stars/dangminhngo/proxima.nvim?style=for-the-badge&logo=starship&color=c69ff5&logoColor=D9E0EE&labelColor=302D41" />
    </a>
    <a href="https://github.com/dangminhngo/proxima.nvim/issues">
      <img alt="Issues" src="https://img.shields.io/github/issues/dangminhngo/proxima.nvim?style=for-the-badge&logo=bilibili&color=F5E0DC&logoColor=D9E0EE&labelColor=302D41" />
    </a>
    <a href="https://github.com/dangminhngo/proxima.nvim">
      <img alt="Repo Size" src="https://img.shields.io/github/repo-size/dangminhngo/proxima.nvim?color=%23DDB6F2&label=SIZE&logo=codesandbox&style=for-the-badge&logoColor=D9E0EE&labelColor=302D41" />
    </a>
    <a href="https://twitter.com/intent/follow?screen_name=dangminhngo">
      <img alt="Follow on Twitter" src="https://img.shields.io/twitter/follow/dangminhngo?style=for-the-badge&logo=twitter&color=8aadf3&logoColor=D9E0EE&labelColor=302D41" />
    </a>
</div>

<br>

<p align="center">
  Proxima colorscheme for NeoVim 0.8+ that supports LSP, Treesitter and other popular plugins.
</p>

## Table of contents

- [Requirements](#requirements)
- [Palettes](#palettes)
- [Installation](#Installation)
- [Setup](#setup)
- [Supported Plugins](#supported-plugins)
- [References](#references)

## Requirements

- Neovim >= 0.8.0

## Palettes

- Default (warm)

<div align="center">
  <p>Palette</p>
  <img 
    src="https://github.com/dangminhngo/proxima.nvim/blob/main/media/default-palette.png"
    alt="Default Palette"
  />
</div>

<br>

<div align="center">
  <p>Preview</p>
  <img src="https://github.com/dangminhngo/proxima.nvim/blob/main/media/default.png" />
</div>

- Midnight (cool)

<div align="center">
  <p>Palette</p>
  <img 
    src="https://github.com/dangminhngo/proxima.nvim/blob/main/media/midnight-palette.png"
    alt="Midnight Palette"
  />
</div>

<br>

<div align="center">
  <p>Preview</p>
  <img src="https://github.com/dangminhngo/proxima.nvim/blob/main/media/midnight.png" />
</div>

## Installation

Here are code snippets for some common installation methods (use only one):

- With [folke/lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{ "dangminhngo/proxima.nvim", version = false }
```

- With [wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim)
```lua
use { "dangminhngo/proxima.nvim" }
```

- With [junegunn/vim-plug](https://github.com/junegunn/vim-plug)
```vim
Plug "dangminhngo/proxima.nvim"
```

For a complete guide, see ```:h proxima.nvim```

## Configurations

Place the following code somewhere in your nvim config (after loading plugins)

```lua
require("proxima").setup({})
-- Run command after the setup function
vim.cmd([[colorscheme proxima]])
``` 

This is an example proxima setup with default values

```lua
require("proxima").setup {
  style = "default", -- "default"/"midnight"
  accent = "green", -- values: "orange", "teal", "white", "cyan", "green", "magenta", "purple", "red", "blue", "yellow"
  transparent = false, -- if true, background is transparent
  terminal_colors = true, -- if true, set terminal colors
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

- [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim)
- [romgrk/barbar.nvim](https://github.com/romgrk/barbar.nvim)
- [utilyre/barbecue.nvim](https://github.com/utilyre/barbecue.nvim)
- [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [glepnir/dashboard-nvim](https://github.com/glepnir/dashboard-nvim)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [phaazon/hop.nvim](https://github.com/phaazon/hop.nvim)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [itchyny/lightline](https://github.com/itchyny/lightline.vim)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [ggandor/leap.nvim](https://github.com/ggandor/leap.nvim)
- [glepnir/lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim)
- [ray-x/lsp_signature.nvim](https://github.com/ray-x/lsp_signature)
- [echasnovski/mini.nvim](https://github.com/echasnovski/mini.nvim)
- [nvim-neo-tree/neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [SmiteshP/nvim-navic](https://github.com/SmiteshP/nvim-navic)
- [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify)
- [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [p00f/nvim-ts-rainbow](https://github.com/p00f/nvim-ts-rainbow)
- [mrjones2014/nvim-ts-rainbow](https://github.com/mrjones2014/nvim-ts-rainbow)
- [HiPhish/nvim-ts-rainbow2](https://github.com/HiPhish/nvim-ts-rainbow2)
- [petertriho/nvim-scrollbar](https://github.com/petertriho/nvim-scrollbar)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [folke/trouble.nvim](https://github.com/folke/trouble.nvim)
- [airblade/vim-gitgutter](https://github.com/airblade/vim-gitgutter)
- [vim-illuminate](https://github.com/RRethy/vim-illuminate)
- [justinmk/vim-sneak](https://github.com/justinmk/vim-sneak)
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim)
- [gbprod/yanky.nvim](https://github.com/gbprod/yanky.nvim)

## References

- [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
