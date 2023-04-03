local palette = require("proxima.palette")
local group = require("proxima.group")
local highlight = require("proxima.lib.highlight")

local M = {}

function M.colorscheme()
  local config = require("proxima.config").config
  vim.pretty_print(config)
  local colors = palette.load_colors(config)
  local hls = group.get_highlights(colors, config)
  highlight.hl(hls)

  if config.terminal_colors then
    highlight.set_terminal_colors(colors)
  end
end

function M.setup(options)
  local config = require("proxima.config")
  config.setup(options)
end

return M
