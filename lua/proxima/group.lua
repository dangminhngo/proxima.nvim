local M = {}

function M.get_highlights(c, config)
  local conf = config.options
  local editor = require("proxima.group.editor").get(c, conf)
  local syntax = require("proxima.group.syntax").get(c, conf)

  local highlights = vim.tbl_deep_extend("force", editor, syntax)

  for plug, opts in pairs(conf.plugins or {}) do
    if type(opts) == "table" then
      if opts.enable then
        highlights = vim.tbl_deep_extend(
          "force",
          highlights,
          require("proxima.group.plugins." .. plug).get(c, conf, opts)
        )
      end
    else
      if opts then
        highlights = vim.tbl_deep_extend(
          "force",
          highlights,
          require("proxima.group.plugins." .. plug).get(c, conf, {})
        )
      end
    end
  end
  return highlights
end

return M
