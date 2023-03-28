local M = {}

function M.load_colors(accent, config)
  accent = accent or "teal"
  local colors = require("proxima.colors")
  return colors.generate(accent, config)
end

return M
