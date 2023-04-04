local M = {}

function M.get(c, conf)
  local syn = c.specs.syntax
  local diag = c.specs.diag
  local pal = c.palettes
  local stl = conf.styles

  return {
    Comment = { fg = syn.comment, style = stl.comment }, -- any comment
    Constant = { fg = syn.const }, -- (preferred) any constant
    String = { fg = syn.string, style = stl.string }, -- a string constant: "this is a string"
    Character = { link = "String" }, -- a character constant: 'c', '\n'
    Number = { fg = syn.number, style = stl.number }, -- a number constant: 234, 0xff
    Float = { link = "Number" }, -- a floating point constant: 2.3e10
    Boolean = { fg = syn.bool, style = stl.boolean }, -- a boolean constant: TRUE, false

    Identifier = { fg = syn.ident, style = stl.variable }, -- (preferred) any variable name
    Function = { fg = syn.func, style = stl.func }, -- function name (also: methods for classes)

    Statement = { fg = syn.keyword, style = stl.keyword }, -- (preferred) any statement
    Conditional = { fg = syn.conditional }, -- if, then, else, endif, switch, etc.
    Repeat = { link = "Conditional" }, -- for, do, while, etc.
    Label = { link = "Conditional" }, -- case, default, etc.

    Operator = { fg = syn.operator }, -- "sizeof", "+", "*", etc.
    Keyword = { fg = syn.keyword, style = stl.keyword }, -- any other keyword
    Exception = { link = "Keyword" }, -- try, catch, throw

    PreProc = { fg = syn.preproc }, -- (preferred) generic Preprocessor
    Include = { link = "PreProc" }, -- preprocessor #include
    Define = { link = "PreProc" }, -- preprocessor #define
    Macro = { link = "PreProc" }, -- same as Define
    PreCondit = { link = "PreProc" }, -- preprocessor #if, #else, #endif, etc.

    Type = { fg = syn.type, style = stl.type }, -- (preferred) int, long, char, etc.
    StorageClass = { link = "Type" }, -- static, register, volatile, etc.
    Structure = { link = "Type" }, -- struct, union, enum, etc.
    Typedef = { link = "Type" }, -- A typedef

    Special = { fg = syn.func }, -- (preferred) any special symbol
    SpecialChar = { link = "Special" }, -- special character in a constant
    Tag = { link = "Special" }, -- you can use CTRL-] on this
    Delimiter = { fg = syn.delimiter }, -- character that needs attention
    SpecialComment = { link = "Special" }, -- special things inside a comment
    Debug = { link = "Special" }, -- debugging statements

    Underlined = { style = "underline" }, -- (preferred) text that stands out, HTML links
    Bold = { style = "bold" },
    Italic = { style = "italic" },

    -- ("Ignore", below, may be invisible...)
    -- Ignore         = {}, -- (preferred) left blank, hidden  |hl-Ignore|

    Error = { fg = diag.error }, -- (preferred) any erroneous construct
    Todo = { fg = pal.bg, bg = diag.info }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    qfLineNr = { link = "lineNr" },
    qfFileName = { link = "Directory" },

    htmlH1 = { fg = pal.magenta, style = "bold" },
    htmlH2 = { fg = pal.blue, style = "bold" },

    -- mkdHeading            = {},
    -- mkdCode               = {},
    mkdCodeDelimiter = { fg = pal.fg, bg = pal.black },
    mkdCodeStart = { fg = pal.teal, style = "bold" },
    mkdCodeEnd = { fg = pal.teal, style = "bold" },
    -- mkdLink               = {},

    markdownHeadingDelimiter = { fg = pal.orange, style = "bold" },
    markdownCode = { fg = pal.teal },
    markdownCodeBlock = { fg = pal.teal },
    markdownH1 = { fg = pal.magenta, style = "bold" },
    markdownH2 = { fg = pal.blue, style = "bold" },
    markdownLinkText = { fg = pal.blue, style = "underline" },

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.
    LspReferenceText = { bg = pal.bg3 }, -- used for highlighting "text" references
    LspReferenceRead = { bg = pal.bg3 }, -- used for highlighting "read" references
    LspReferenceWrite = { bg = pal.bg4 }, -- used for highlighting "write" references
  }
end

return M
