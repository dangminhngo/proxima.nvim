local M = {}

function M.load_colors(config)
  local colors = require("proxima.colors")
  return colors.generate(config)
end

return M
