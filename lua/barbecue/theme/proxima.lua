local config = require("proxima.config")
local palette = require("proxima.palette")

local c = palette.load_colors(config)
local pal = c.palettes
local diag = c.specs.diag

return {
  normal = { fg = pal.fg3, bg = pal.dark },

  ellipsis = { fg = pal.bg4 },
  separator = { fg = pal.bg4 },
  modified = { fg = diag.warn },

  dirname = { fg = pal.bg4 },
  basename = { fg = pal.fg3, style = "bold" },
  context = { fg = pal.fg3 },

  context_file = { fg = c.fg3 },
  context_module = { fg = c.yellow },
  context_namespace = { fg = c.yellow },
  context_package = { fg = c.blue },
  context_class = { fg = c.orange },
  context_method = { fg = c.blue },
  context_property = { fg = c.teal },
  context_field = { fg = c.teal },
  context_constructor = { fg = c.blue },
  context_enum = { fg = c.orange },
  context_interface = { fg = c.orange },
  context_function = { fg = c.blue },
  context_variable = { fg = c.magenta },
  context_constant = { fg = c.magenta },
  context_string = { fg = c.green },
  context_number = { fg = c.orange },
  context_boolean = { fg = c.orange },
  context_array = { fg = c.orange },
  context_object = { fg = c.orange },
  context_key = { fg = c.purple },
  context_null = { fg = c.cyan },
  context_enum_member = { fg = c.teal },
  context_struct = { fg = c.orange },
  context_event = { fg = c.orange },
  context_operator = { fg = c.teal },
  context_type_parameter = { fg = c.teal },
}
