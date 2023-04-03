local M = {}

function M.get_highlights(c, config)
  local editor = require("proxima.group.editor").get(c, config)
  local syntax = require("proxima.group.syntax").get(c, config)

  local highlights = vim.tbl_deep_extend("force", editor, syntax)

  for plug, opts in pairs(config.plugins or {}) do
    if type(opts) == "table" then
      if opts.enable then
        highlights =
          vim.tbl_deep_extend("force", highlights, require("proxima.group.plugins." .. plug).get(c, config, opts))
      end
    else
      if opts then
        highlights =
          vim.tbl_deep_extend("force", highlights, require("proxima.group.plugins." .. plug).get(c, config, {}))
      end
    end
  end
  return highlights
end

return M
