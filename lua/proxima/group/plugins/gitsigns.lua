-- https://github.com/lewis6991/gitsigns.nvim

local M = {}

function M.get(c, config, opts)
  local git = c.specs.git
  return {
    GitSignsAdd = { fg = git.added }, -- diff mode: Added line |diff.txt|
    GitSignsChange = { fg = git.changed }, -- diff mode: Changed line |diff.txt|
    GitSignsDelete = { fg = git.removed }, -- diff mode: Deleted line |diff.txt|
  }
end

return M
