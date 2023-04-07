local M = {}

--- Set terminal colors
-- @param c
-- @param conf
function M.set_terminal_colors(c)
  local pal = c.palette

  local colors = {
    pal.black,
    pal.red,
    pal.green,
    pal.yellow,
    pal.blue,
    pal.magenta,
    pal.cyan,
    pal.white,
    pal.black,
    pal.red,
    pal.green,
    pal.yellow,
    pal.blue,
    pal.magenta,
    pal.cyan,
    pal.white,
  }

  vim.g.terminal_color_foreground = pal.fg
  vim.g.terminal_color_background = pal.bg

  for i, color in ipairs(colors) do
    local n = "terminal_color_" .. i - 1
    vim.g[n] = color
  end

  if vim.fn.has("nvim") == 0 then
    vim.g.terminal_ansi_colors = vim.list(colors)
  end
end

--- Highlight commands for NeoVim 0.7+
-- @param c table
-- @param hls table
function M.hl(hls)
  vim.o.termguicolors = true
  vim.g.colors_name = "proxima"
  vim.o.background = "dark"

  for group, opts in pairs(hls) do
    if opts.link and opts.link ~= "" then
      vim.api.nvim_set_hl(0, group, { link = opts.link })
    else
      if opts.style then
        opts = vim.tbl_extend("force", opts, opts.style)
        opts.style = nil
      end
      vim.api.nvim_set_hl(0, group, opts)
    end
  end
end

return M
