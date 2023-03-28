local palette = require("proxima.palette")
local group = require("proxima.group")
local highlight = require("proxima.lib.highlight")

local M = {}

function M.colorscheme()
  local config = require("proxima.config")
  local colors = palette.load_colors(config.accent, config)
  local hls = group.get_highlights(colors, config)
  highlight.hl(hls)

  if config.options.terminal_colors then
    highlight.set_terminal_colors(colors)
  end
end

function M.setup(user_conf)
  local config = require("proxima.config")
  config.set_config(user_conf)
end

return M
