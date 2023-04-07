local color = require("proxima.lib.color")
local M = {}

M.groups = function(c, config)
  local transparent = config.transparent
  local reverse = config.reverse
  local stl = config.styles

  local pal = c.palette
  local syn = c.specs.syntax
  local diag = c.specs.diag
  local diff = c.specs.diff
  local git = c.specs.git

  local core_opts = config.core or {}
  local plugin_opts = config.plugins or {}

  return {
    -------------------------------------------------------------------------------------------------------------------
    -------------------------------------------------------------------------------------------------------------------
    editor = {
      ColorColumn = { bg = pal.bg0 }, -- used for the columns set with 'colorcolumn'
      Conceal = { fg = pal.bg4 }, -- placeholder characters substituted for concealed text (see 'conceallevel')
      Cursor = { fg = pal.bg, bg = pal.fg }, -- character under the cursor
      lCursor = { link = "Cursor" }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
      CursorIM = { link = "Cursor" }, -- like Cursor, but used when in IME mode |CursorIM|
      CursorColumn = { link = "CursorLine" }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
      CursorLine = { bg = pal.bg2 }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
      Directory = { fg = syn.func }, -- directory names (and other special names in listings)
      DiffAdd = { fg = diff.add, bg = pal.bg0 }, -- diff mode: Added line |diff.txt|
      DiffChange = { fg = diff.change, bg = pal.bg0 }, -- diff mode: Changed line |diff.txt|
      DiffDelete = { fg = diff.delete, bg = pal.bg0 }, -- diff mode: Deleted line |diff.txt|
      DiffText = { fg = diff.text, bg = pal.bg0 }, -- diff mode: Changed text within a changed line |diff.txt|
      EndOfBuffer = { fg = pal.bg }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
      -- TermCursor      = {}, -- cursor in a focused terminal
      -- TermCursorNC    = {}, -- cursor in an unfocused terminal
      ErrorMsg = { fg = diag.error }, -- error messages on the command line
      VertSplit = { fg = pal.bg4 }, -- the column separating vertically split windows
      Folded = { fg = pal.fg3, bg = pal.bg2 }, -- line used for closed folds
      FoldColumn = { fg = pal.fg3 }, -- 'foldcolumn'
      SignColumn = { fg = pal.fg3 }, -- column where |signs| are displayed
      SignColumnSB = { link = "SignColumn" }, -- column where |signs| are displayed
      Substitute = { fg = pal.bg, bg = diag.error }, -- |:substitute| replacement text highlighting
      LineNr = { fg = pal.bg4 }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
      CursorLineNr = { fg = pal.accent, bold = true }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
      MatchParen = { fg = diag.warn, bold = true, reverse = reverse.match_paren }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
      ModeMsg = { fg = diag.warn, bold = true }, -- 'showmode' message (e.g., "-- INSERT -- ")
      MsgArea = { fg = pal.fg2 }, -- Area for messages and cmdline
      -- MsgSeparator    = {}, -- Separator for scrolled messages, `msgsep` flag of 'display'
      MoreMsg = { fg = diag.info, bold = true }, -- |more-prompt|
      NonText = { fg = pal.bg4 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
      Normal = { fg = pal.fg, bg = transparent and pal.none or pal.bg }, -- normal text
      NormalNC = { fg = pal.fg, bg = transparent and pal.none or pal.bg }, -- normal text in non-current windows
      NormalFloat = { fg = pal.fg, bg = pal.bg0 }, -- Normal text in floating windows.
      FloatBorder = { fg = pal.fg3 }, -- TODO
      Pmenu = { fg = pal.fg2, bg = pal.bg3 }, -- Popup menu: normal item.
      PmenuSel = { fg = pal.bg, bg = pal.accent }, -- Popup menu: selected item.
      PmenuSbar = { link = "Pmenu" }, -- Popup menu: scrollbar.
      PmenuThumb = { bg = pal.visual }, -- Popup menu: Thumb of the scrollbar.
      Question = { link = "MoreMsg" }, -- |hit-enter| prompt and yes/no questions
      QuickFixLine = { link = "CursorLine" }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
      Search = { fg = pal.bg2, bg = pal.visual, reverse = reverse.search }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
      IncSearch = { fg = pal.search, bg = diag.hint, reverse = reverse.search }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
      SpecialKey = { link = "NonText" }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
      SpellBad = { sp = diag.error, undercurl = true }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
      SpellCap = { sp = diag.warn, undercurl = true }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
      SpellLocal = { sp = diag.info, undercurl = true }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
      SpellRare = { sp = diag.info, undercurl = true }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
      StatusLine = { fg = pal.fg2, bg = pal.bg0 }, -- status line of current window
      StatusLineNC = { fg = pal.fg3, bg = pal.bg0 }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
      TabLine = { fg = pal.fg3, bg = pal.bg2 }, -- tab pages line, not active tab page label
      TabLineFill = { bg = pal.bg0 }, -- tab pages line, where there are no labels
      TabLineSel = { fg = pal.fg0, bg = pal.bg }, -- tab pages line, active tab page label
      Title = { fg = syn.func }, -- titles for output from ":set all", ":autocmd" etpal.
      Visual = { fg = pal.bg0, bg = pal.visual, reverse = reverse.visual }, -- Visual mode selection
      VisualNOS = { link = "Visual" }, -- Visual mode selection when vim is "Not Owning the Selection".
      WarningMsg = { fg = diag.warn }, -- warning messages
      Whitespace = { fg = pal.bg2 }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
      WildMenu = { link = "Pmenu" }, -- current match in 'wildmenu' completion

      -- NeoVim
      healthError = { fg = diag.error },
      healthSuccess = { fg = pal.accent },
      healthWarning = { fg = diag.warn },
    },
    -------------------------------------------------------------------------------------------------------------------
    -------------------------------------------------------------------------------------------------------------------
    syntax = {
      -- These groups are not listed as default vim groups,
      -- but they are defacto standard group names for syntax highlighting.
      -- commented out groups should chain up to their "preferred" group by
      -- default,
      -- Uncomment and edit if you want more specific syntax highlighting.
      Comment = { fg = syn.comment, style = stl.comments }, -- any comment
      Constant = { fg = syn.const }, -- (preferred) any constant
      String = { fg = syn.string, style = stl.strings }, -- a string constant: "this is a string"
      Character = { link = "String" }, -- a character constant: 'c', '\n'
      Number = { fg = syn.number, style = stl.numbers }, -- a number constant: 234, 0xff
      Float = { link = "Number" }, -- a floating point constant: 2.3e10
      Boolean = { fg = syn.bool, style = stl.booleans }, -- a boolean constant: TRUE, false

      Identifier = { fg = syn.ident, style = stl.variables }, -- (preferred) any variable name
      Function = { fg = syn.func, style = stl.functions }, -- function name (also: methods for classes)

      Statement = { fg = syn.keyword, style = stl.keywords }, -- (preferred) any statement
      Conditional = { fg = syn.conditional }, -- if, then, else, endif, switch, etc.
      Repeat = { link = "Conditional" }, -- for, do, while, etc.
      Label = { link = "Conditional" }, -- case, default, etc.

      Operator = { fg = syn.operator }, -- "sizeof", "+", "*", etc.
      Keyword = { fg = syn.keyword, style = stl.keywords }, -- any other keyword
      Exception = { link = "Keyword" }, -- try, catch, throw

      PreProc = { fg = syn.preproc }, -- (preferred) generic Preprocessor
      Include = { link = "PreProc" }, -- preprocessor #include
      Define = { link = "PreProc" }, -- preprocessor #define
      Macro = { link = "PreProc" }, -- same as Define
      PreCondit = { link = "PreProc" }, -- preprocessor #if, #else, #endif, etc.

      Type = { fg = syn.type, style = stl.types }, -- (preferred) int, long, char, etc.
      StorageClass = { link = "Type" }, -- static, register, volatile, etc.
      Structure = { link = "Type" }, -- struct, union, enum, etc.
      Typedef = { link = "Type" }, -- A typedef

      Special = { fg = syn.func }, -- (preferred) any special symbol
      SpecialChar = { link = "Special" }, -- special character in a constant
      Tag = { link = "Special" }, -- you can use CTRL-] on this
      Delimiter = { fg = syn.delimiter }, -- character that needs attention
      SpecialComment = { link = "Special" }, -- special things inside a comment
      Debug = { link = "Special" }, -- debugging statements

      Underlined = { underline = true }, -- (preferred) text that stands out, HTML links
      Bold = { bold = true },
      Italic = { italic = true },

      -- ("Ignore", below, may be invisible...)
      -- Ignore         = {}, -- (preferred) left blank, hidden  |hl-Ignore|

      Error = { fg = diag.error }, -- (preferred) any erroneous construct
      Todo = { fg = pal.bg, bg = diag.info }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

      qfLineNr = { link = "lineNr" },
      qfFileName = { link = "Directory" },

      htmlH1 = { fg = pal.magenta, bold = true },
      htmlH2 = { fg = pal.blue, bold = true },

      -- mkdHeading            = {},
      -- mkdCode               = {},
      mkdCodeDelimiter = { fg = pal.fg, bg = pal.black },
      mkdCodeStart = { fg = pal.teal, bold = true },
      mkdCodeEnd = { fg = pal.teal, bold = true },
      -- mkdLink               = {},

      markdownHeadingDelimiter = { fg = pal.orange, bold = true },
      markdownCode = { fg = pal.teal },
      markdownCodeBlock = { fg = pal.teal },
      markdownH1 = { fg = pal.magenta, bold = true },
      markdownH2 = { fg = pal.blue, bold = true },
      markdownLinkText = { fg = pal.blue, underline = true },

      ["helpCommand"] = { bg = pal.bg0, fg = pal.blue },

      debugPC = { bg = pal.bg0 }, -- used for highlighting the current line in terminal-debug
      debugBreakpoint = { bg = pal.bg3, fg = pal.blue }, -- used for breakpoint colors in terminal-debug
    },
    -------------------------------------------------------------------------------------------------------------------
    -------------------------------------------------------------------------------------------------------------------
    -- NeoVim native diagnostic or LSP diagnostic
    diagnostic = {
      DiagnosticError = { fg = diag.error },
      DiagnosticWarn = { fg = diag.warn },
      DiagnosticInfo = { fg = diag.info },
      DiagnosticHint = { fg = diag.hint },

      DiagnosticSignError = { link = "DiagnosticError" },
      DiagnosticSignWarn = { link = "DiagnosticWarn" },
      DiagnosticSignInfo = { link = "DiagnosticInfo" },
      DiagnosticSignHint = { link = "DiagnosticHint" },

      DiagnosticVirtualTextError = core_opts.diagnostic.background and { fg = pal.bg, bg = diag.error }
        or { fg = diag.error, bg = color.darken(diag.error, 72) },
      DiagnosticVirtualTextWarn = core_opts.diagnostic.background and { fg = pal.bg, bg = diag.warn }
        or { fg = diag.warn, bg = color.darken(diag.warn, 72) },
      DiagnosticVirtualTextInfo = core_opts.diagnostic.background and { fg = pal.bg, bg = diag.info }
        or { fg = diag.info, bg = color.darken(diag.info, 72) },
      DiagnosticVirtualTextHint = core_opts.diagnostic.background and { fg = pal.bg, bg = diag.hint }
        or { fg = diag.hint, bg = color.darken(diag.hint, 72) },

      DiagnosticUnderlineError = { undercurl = true, sp = diag.error },
      DiagnosticUnderlineWarn = { undercurl = true, sp = diag.warn },
      DiagnosticUnderlineInfo = { undercurl = true, sp = diag.info },
      DiagnosticUnderlineHint = { undercurl = true, sp = diag.hint },
    },
    -------------------------------------------------------------------------------------------------------------------
    -------------------------------------------------------------------------------------------------------------------
    lsp = {
      -- These groups are for the native LSP client. Some other LSP clients may
      -- use these groups, or use their own. Consult your LSP client's
      -- documentation.
      LspReferenceText = { bg = pal.bg3 }, -- used for highlighting "text" references
      LspReferenceRead = { bg = pal.bg3 }, -- used for highlighting "read" references
      LspReferenceWrite = { bg = pal.bg4 }, -- used for highlighting "write" references

      LspSignatureActiveParameter = { fg = pal.bg, bg = syn.param },
      LspCodeLens = { fg = syn.comment },

      LspInfoBorder = { fg = diag.info, bg = pal.bg0 },

      ALEErrorSign = { fg = diag.error },
      ALEWarningSign = { fg = diag.warn },
    },
    -------------------------------------------------------------------------------------------------------------------
    -------------------------------------------------------------------------------------------------------------------
    -- https://github.com/nvim-treesitter/nvim-treesitter
    treesitter = {
      ["@annotation"] = { link = "PreProc" }, -- Annotations that can be attached to the code to denote some kind of meta information. e.g. C++/Dart attributes.
      ["@attribute"] = { fg = syn.attr, style = stl.attributes }, -- HTML/JSX attributes
      ["@boolean"] = { link = "Boolean" }, -- Boolean literals: `True` and `False` in Python.
      ["@character"] = { link = "Character" }, -- Character literals: `'a'` in C.
      ["@character.special"] = { link = "SpecialChar" }, -- Special characters
      ["@comment"] = { link = "Comment" }, -- Line comments and block comments.
      ["@conditional"] = { link = "Conditional" }, -- Keywords related to conditionals: `if`, `when`, `cond`, etc.
      ["@constant"] = { link = "Constant" }, -- Constants identifiers. These might not be semantically constant.  E.g. uppercase variables in Python.
      ["@constant.builtin"] = { fg = syn.builtin2, style = stl.constants }, -- Built-in constant values: `nil` in Lua.
      ["@constant.macro"] = { link = "Define" }, -- Constants defined by macros: `NULL` in C.
      ["@constructor"] = { fg = syn.constructor }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
      ["@debug"] = { link = "Debug" }, -- For keyword like `debugger`
      ["@define"] = { link = "Define" }, -- For `#define` in C/C++
      ["@error"] = { link = "Error" }, -- Syntax/parser errors. This might highlight large sections of code while the user is typing still incomplete code, use a sensible highlight.
      ["@exception"] = { link = "Exception" }, -- Exception related keywords: `try`, `except`, `finally` in Python.
      ["@field"] = { fg = syn.field }, -- Object and struct fields.
      ["@float"] = { link = "Float" }, -- Floating-point number literals.
      ["@function"] = { link = "Function" }, -- Function definitions.
      ["@function.call"] = { link = "Function" }, -- Function calls
      ["@function.builtin"] = { fg = syn.builtin0, style = stl.functions }, -- Built-in functions: `print` in Lua.
      ["@function.macro"] = { fg = syn.builtin0, style = stl.functions }, -- Macro defined functions (calls and definitions): each `macro_rules` in Rust.
      ["@include"] = { link = "Include" }, -- File or module inclusion keywords: `#include` in C, `use` or `extern crate` in Rust.
      ["@keyword"] = { link = "Keyword" }, -- Keywords that don't fit into other categories.
      ["@keyword.function"] = { fg = syn.keyword, style = stl.functions }, -- Keywords used to define a function: `function` in Lua, `def` and `lambda` in Python.
      ["@keyword.operator"] = { link = "Operator" }, -- Unary and binary operators that are English words: `and`, `or` in Python; `sizeof` in C.
      ["@keyword.return"] = { fg = syn.builtin0, style = stl.keywords }, -- Keywords like `return` and `yield`.
      ["@label"] = { link = "Label" }, -- GOTO labels: `label:` in C, and `::label::` in Lua.
      ["@method"] = { link = "Function" }, -- Method definitions.
      ["@method.call"] = { link = "Function" }, -- Method calls
      ["@namespace"] = { fg = syn.builtin1 }, -- Identifiers referring to modules and namespaces.
      ["@none"] = { fg = pal.fg2 }, -- No highlighting (sets all highlight arguments to `NONE`). this group is used to clear certain ranges, for example, string interpolations. Don't change the values of this highlight group.
      ["@number"] = { link = "Number" }, -- Numeric literals that don't fit into other categories.
      ["@operator"] = { link = "Operator" }, -- Binary or unary operators: `+`, and also `->` and `*` in C.
      ["@parameter"] = { fg = syn.param, style = stl.parameters }, -- Parameters of a function.
      ["@parameter.reference"] = { link = "@parameter" }, -- References to parameters of a function.
      ["@preproc"] = { link = "PreProc" }, -- Preprocessors
      ["@property"] = { link = "@field" }, -- Same as `@field`.
      ["@punctuation.delimiter"] = { fg = syn.bracket }, -- Punctuation delimiters: Periods, commas, semicolons, etc.
      ["@punctuation.bracket"] = { link = "@punctuation.delimiter" }, -- Brackets, braces, parentheses, etc.
      ["@punctuation.special"] = { link = "@punctuation.delimiter" }, --  punctuation that doesn't fit into the previous categories.
      ["@repeat"] = { link = "Repeat" }, -- Keywords related to loops: `for`, `while`, etc.
      ["@storageclass"] = { link = "StorageClass" }, -- Same as 'StorageClass'
      ["@string"] = { link = "String" }, -- String literals.
      ["@string.regex"] = { fg = syn.regex }, -- Regular expression literals.
      ["@string.escape"] = { link = "Operator" }, -- Escape characters within a string: `\n`, `\t`, etc.
      ["@string.special"] = { link = "Operator" }, -- Strings with special meaning that don't fit into the previous categories.
      ["@symbol"] = { link = "Identifier" }, -- Strings with special meaning that don't fit into the previous categories.
      ["@tag"] = { link = "Label" }, -- Tags like HTML tag names.
      ["@tag.attribute"] = { link = "@attribute" }, -- HTML tag attributes.
      ["@tag.delimiter"] = { link = "Delimiter" }, -- Tag delimiters like `<` `>` `/`.
      ["@text"] = { fg = syn.variable }, -- Non-structured text. Like text in a markup language.
      ["@text.strong"] = { fg = syn.variable, bold = true }, -- Text to be represented in bold.
      ["@text.emphasis"] = { fg = syn.variable, italic = true }, -- Text to be represented with emphasis.
      ["@text.underline"] = { fg = syn.variable, underline = true }, -- Text to be represented with an underline.
      ["@text.strike"] = { fg = syn.variable, strikethrough = true }, -- Strikethrough text.
      ["@text.title"] = { link = "Title" }, -- Text that is part of a title.
      ["@text.literal"] = { link = "String" }, -- Literal or verbatim text.
      ["@text.uri"] = { link = "Underlined" }, -- URIs like hyperlinks or email addresses.
      ["@text.math"] = { link = "Special" }, -- Math environments like LaTeX's `$ ... $`
      ["@text.reference"] = { link = "Constant" }, -- Footnotes, text references, citations, etc.
      ["@text.environment"] = { link = "Macro" }, -- Text environments of markup languages.
      ["@text.environment.name"] = { link = "Type" }, -- Text/string indicating the type of text environment. Like the name of a `\begin` block in LaTeX.
      ["@text.note"] = { link = "SpecialComment" }, -- Text representation of an informational note.
      ["@text.warning"] = { link = "Todo" }, -- Text representation of a warning note.
      ["@text.danger"] = { link = "Error" }, -- Text representation of a danger note.
      ["@todo"] = { link = "Todo" }, -- Same as `Todo`
      ["@type"] = { link = "Type" }, -- Type (and class) definitions and annotations.
      ["@type.builtin"] = { fg = syn.builtin1, style = stl.types }, -- Built-in types: `i32` in Rust.
      ["@type.qualifier"] = { link = "Indentifier" }, -- Type but what is qualifier?
      ["@type.definition"] = { link = "Type" }, -- Type (and class) definitions
      ["@variable"] = { fg = syn.variable, style = stl.variables }, -- Variable names that don't fit into other categories.
      ["@variable.builtin"] = { fg = syn.builtin0, style = stl.variables }, -- Variable names defined by the language: `this` or `self` in Javascript.
      ["@field.rust"] = { fg = pal.fg2 }, -- Object fields in Rust
      ["@tag.javascript"] = { fg = syn.builtin0 }, -- JSX tag opening/closing element
      ["@tag.typescript"] = { fg = syn.builtin0 }, -- TSX tag opening/closing element
    },
    -------------------------------------------------------------------------------------------------------------------
    -------------------------------------------------------------------------------------------------------------------
    plugins = {
      -----------------------------------------------------------------------------------------------------------------
      -- https://github.com/goolord/alpha-nvim
      alpha = {
        AlphaShortcut = { fg = pal.blue },
        AlphaHeader = { fg = pal.accent },
        AlphaHeaderLabel = { fg = pal.orange },
        AlphaFooter = { fg = pal.magenta, italic = true },
        AlphaButtons = { fg = pal.fg },
      },
      -----------------------------------------------------------------------------------------------------------------
      -- https://github.com/romgrk/barbar.nvim
      barbar = {
        BufferCurrent = { bg = pal.bg0, fg = pal.fg },
        BufferCurrentERROR = { bg = pal.bg0, fg = diag.error },
        BufferCurrentHINT = { bg = pal.bg0, fg = diag.hint },
        -- BufferCurrentIcon = { bg = pal.bg0, fg = c.},
        BufferCurrentINFO = { bg = pal.bg0, fg = diag.info },
        BufferCurrentWARN = { bg = pal.bg0, fg = diag.warn },
        BufferCurrentIndex = { bg = pal.bg0, fg = diag.info },
        BufferCurrentMod = { bg = pal.bg0, fg = diag.warn },
        BufferCurrentSign = { bg = pal.bg0, fg = diag.info },
        BufferCurrentTarget = { bg = pal.bg0, fg = pal.red },
        BufferAlternate = { bg = pal.bg0, fg = pal.fg },
        BufferAlternateERROR = { bg = pal.bg0, fg = diag.error },
        BufferAlternateHINT = { bg = pal.bg0, fg = diag.hint },
        -- BufferAlternateIcon = { bg = pal.bg0, fg = c. },
        BufferAlternateIndex = { bg = pal.bg0, fg = diag.info },
        BufferAlternateINFO = { bg = pal.bg0, fg = diag.info },
        BufferAlternateMod = { bg = pal.bg0, fg = diag.warn },
        BufferAlternateSign = { bg = pal.bg0, fg = diag.info },
        BufferAlternateTarget = { bg = pal.bg0, fg = pal.red },
        BufferAlternateWARN = { bg = pal.bg0, fg = diag.warn },
        BufferVisible = { bg = pal.dark, fg = pal.fg },
        BufferVisibleERROR = { bg = pal.dark, fg = diag.error },
        BufferVisibleHINT = { bg = pal.dark, fg = diag.hint },
        -- BufferVisibleIcon = { bg = pal.dark, fg = c. },
        BufferVisibleINFO = { bg = pal.dark, fg = diag.info },
        BufferVisibleWARN = { bg = pal.dark, fg = diag.warn },
        BufferVisibleIndex = { bg = pal.dark, fg = diag.info },
        BufferVisibleMod = { bg = pal.dark, fg = diag.warn },
        BufferVisibleSign = { bg = pal.dark, fg = diag.info },
        BufferVisibleTarget = { bg = pal.dark, fg = pal.red },
        BufferInactive = { bg = pal.dark, fg = pal.bg4 },
        BufferInactiveERROR = { bg = pal.dark, fg = color.darken(diag.error, 40) },
        BufferInactiveHINT = { bg = pal.dark, fg = color.darken(diag.hint, 40) },
        -- BufferInactiveIcon = { bg = pal.dark, fg = util.darken(c., 0.7) },
        BufferInactiveINFO = { bg = pal.dark, fg = color.darken(diag.info, 40) },
        BufferInactiveWARN = { bg = pal.dark, fg = color.darken(diag.warn, 40) },
        BufferInactiveIndex = { bg = pal.dark, fg = pal.bg4 },
        BufferInactiveMod = { bg = pal.dark, fg = color.darken(diag.warn, 40) },
        BufferInactiveSign = { bg = pal.dark, fg = pal.fg3 },
        BufferInactiveTarget = { bg = pal.dark, fg = pal.red },
        BufferOffset = { bg = pal.dark, fg = pal.bg4 },
        BufferTabpageFill = { bg = pal.dark, fg = pal.bg4 },
        BufferTabpages = { bg = pal.dark, fg = pal.none },
      },
      -----------------------------------------------------------------------------------------------------------------
      -- https://github.com/akinsho/bufferline.nvim
      bufferline = {
        BufferLineFill = { bg = pal.dark },
        BufferLineBackground = { fg = syn.comment, bg = pal.bg0 },
        BufferLineBufferVisible = { fg = pal.fg3, bg = pal.bg0 },
        BufferLineBufferSelected = { fg = pal.fg0, bg = pal.bg },
        BufferLineTab = { fg = pal.bg3, bg = pal.bg0 },
        BufferLineTabSelected = { fg = pal.bg0, bg = pal.bg },
        BufferLineTabClose = { fg = diag.error, bg = pal.bg0 },
        BufferLineIndicatorSelected = { fg = pal.bg, bg = pal.bg },
        BufferLineSeparator = { fg = pal.bg4, bg = pal.bg0 },
        BufferLineSeparatorVisible = { fg = pal.bg4, bg = pal.bg0 },
        BufferLineSeparatorSelected = { fg = pal.bg4, bg = pal.bg },
        BufferLineCloseButton = { fg = diag.error, bg = pal.bg0 },
        BufferLineCloseButtonVisible = { fg = diag.error, bg = pal.bg0 },
        BufferLineCloseButtonSelected = { fg = diag.error, bg = pal.bg },
        BufferLineModified = { fg = diag.hint, bg = pal.bg0 },
        BufferLineModifiedVisible = { fg = diag.hint, bg = pal.bg0 },
        BufferLineModifiedSelected = { fg = diag.hint, bg = pal.bg },
        BufferLineError = { fg = diag.error, bg = pal.bg0 },
        BufferLineErrorDiagnostic = { fg = diag.error, bg = pal.bg0 },
      },
      -----------------------------------------------------------------------------------------------------------------
      -- https://github.com/glepnir/dashboard-nvim
      dashboard = {
        DashboardShortCut = { link = "Keyword" },
        DashboardHeader = { fg = pal.accent },
        DashboardCenter = { fg = syn.func },
        DashboardFooter = { fg = syn.const, italic = true },
      },
      -----------------------------------------------------------------------------------------------------------------
      -- Diff
      diff = {
        diffAdded = { fg = diff.add },
        diffRemoved = { fg = diff.delete },
        diffChanged = { fg = diff.change },
        diffOldFile = { fg = pal.yellow },
        diffNewFile = { fg = pal.orange },
        diffFile = { fg = pal.blue },
        diffLine = { fg = pal.comment },
        diffIndexLine = { fg = pal.magenta },
      },
      -----------------------------------------------------------------------------------------------------------------
      -- https://github.com/lewis6991/gitsigns.nvim
      gitsigns = {
        GitSignsAdd = { fg = git.added }, -- diff mode: Added line |diff.txt|
        GitSignsChange = { fg = git.changed }, -- diff mode: Changed line |diff.txt|
        GitSignsDelete = { fg = git.removed }, -- diff mode: Deleted line |diff.txt|
      },

      -----------------------------------------------------------------------------------------------------------------
      -- https://github.com/phaazon/hop.nvim
      hop = {
        HopNextKey = { fg = pal.teal, bold = true },
        HopNextKey1 = { fg = pal.blue, bold = true },
        HopNextKey2 = { fg = color.darken(pal.blue, 16) },
        HopUnmatched = { fg = pal.fg3 },
      },
      -----------------------------------------------------------------------------------------------------------------
      -- https://github.com/lukas-reineke/indent-blankline.nvim
      indent_blankline = {
        IndentBlanklineChar = { fg = pal.bg3, nocombine = true },
        IndentBlanklineContextChar = { fg = pal.accent, nocombine = true },
      },
      -----------------------------------------------------------------------------------------------------------------
      -- https://github.com/folke/lazy.nvim
      lazy = {
        LazyProgressDone = { bold = true, fg = pal.accent },
        LazyProgressTodo = { bold = true, fg = pal.fg2 },
      },
      -----------------------------------------------------------------------------------------------------------------
      -- https://github.com/ggandor/leap.nvim
      leap = {
        LeapMatch = { bg = pal.search, fg = pal.bg, bold = true },
        LeapLabelPrimary = { fg = pal.search, bold = true },
        LeapLabelSecondary = { fg = pal.green, bold = true },
        LeapBackdrop = { fg = pal.bg4 },
      },
      -----------------------------------------------------------------------------------------------------------------
      -- https://github.com/glepnir/lspsaga.nvim
      lspsaga = {
        LspFloatWinNormal = { bg = pal.bg0 },
        LspFloatWinBorder = { fg = pal.fg3 },
        LspSagaBorderTitle = { link = "Title" },
        LspSagaHoverBorder = { fg = pal.fg3 },
        LspSagaRenameBorder = { fg = pal.fg3 },
        LspSagaDefPreviewBorder = { fg = pal.fg3 },
        LspSagaCodeActionBorder = { fg = pal.fg3 },
        LspSagaFinderSelection = { fg = pal.search },
        LspSagaCodeActionTitle = { link = "Title" },
        LspSagaCodeActionContent = { link = "String" },
        LspSagaSignatureHelpBorder = { fg = diag.error },
        ReferencesCount = { fg = pal.magenta },
        DefinitionCount = { fg = pal.magenta },
        DefinitionIcon = { fg = pal.blue },
        ReferencesIcon = { fg = pal.blue },
        TargetWord = { fg = pal.pink },
      },
      -----------------------------------------------------------------------------------------------------------------
      -- https://github.com/echasnovski/mini.nvim
      mini = {
        MiniCompletionActiveParameter = { underline = true },

        MiniCursorword = { bg = pal.bg3 },
        MiniCursorwordCurrent = { bg = pal.bg4 },

        MiniIndentscopeSymbol = { fg = pal.blue },
        MiniIndentscopePrefix = { nocombine = true }, -- Make it invisible

        MiniJump = { bg = pal.search, fg = pal.fg },

        MiniJump2dSpot = { fg = pal.search, bold = true, nocombine = true },

        MiniStarterCurrent = { nocombine = true },
        MiniStarterFooter = { fg = pal.yellow, italic = true },
        MiniStarterHeader = { fg = pal.blue },
        MiniStarterInactive = { fg = syn.comment, style = stl.comments },
        MiniStarterItem = { fg = pal.fg, bg = transparent and pal.none or pal.bg },
        MiniStarterItemBullet = { fg = pal.bg4 },
        MiniStarterItemPrefix = { fg = pal.yellow },
        MiniStarterSection = { fg = pal.blue },
        MiniStarterQuery = { fg = pal.teal },

        MiniStatuslineDevinfo = { fg = pal.fg3, bg = pal.search },
        MiniStatuslineFileinfo = { fg = pal.fg3, bg = pal.search },
        MiniStatuslineFilename = { fg = pal.fg3, bg = pal.bg4 },
        MiniStatuslineInactive = { fg = pal.blue, bg = pal.dark },
        MiniStatuslineModeCommand = { fg = pal.black, bg = c.yellow, bold = true },
        MiniStatuslineModeInsert = { fg = pal.black, bg = pal.green, bold = true },
        MiniStatuslineModeNormal = { fg = pal.black, bg = pal.blue, bold = true },
        MiniStatuslineModeOther = { fg = pal.black, bg = pal.teal, bold = true },
        MiniStatuslineModeReplace = { fg = pal.black, bg = pal.red, bold = true },
        MiniStatuslineModeVisual = { fg = pal.black, bg = pal.magenta, bold = true },

        MiniSurround = { bg = pal.orange, fg = pal.black },

        MiniTablineCurrent = { fg = pal.fg, bg = pal.bg4 },
        MiniTablineFill = { bg = pal.black },
        MiniTablineHidden = { fg = syn.comment, bg = pal.dark },
        MiniTablineModifiedCurrent = { fg = diag.warn, bg = pal.bg4 },
        MiniTablineModifiedHidden = { bg = pal.dark, fg = color.darken(diag.warn, 16) },
        MiniTablineModifiedVisible = { fg = diag.warn, bg = pal.dark },
        MiniTablineTabpagesection = { bg = pal.dark, fg = c.none },
        MiniTablineVisible = { fg = pal.fg, bg = pal.dark },

        MiniTestEmphasis = { bold = true },
        MiniTestFail = { fg = pal.red, bold = true },
        MiniTestPass = { fg = pal.green, bold = true },

        MiniTrailspace = { bg = pal.red },
      },
      -----------------------------------------------------------------------------------------------------------------
      -- https://github.com/nvim-neo-tree/neo-tree.lua
      neo_tree = {
        NeoTreeExpander = { fg = pal.bg4 },
        NeoTreeNormal = { fg = pal.fg2, bg = config.transparent and "NONE" or pal.bg0 },
        NeoTreeNormalNC = { fg = pal.fg2, bg = config.transparent and "NONE" or pal.bg0 },
        NeoTreeVertSplit = { link = "VertSplit" },
        NeoTreeIndentMarker = { fg = pal.bg4 },
        NeoTreeTitleBar = { fg = pal.bg, bg = pal.accent },

        NeoTreeDimText = { fg = pal.fg3 },
        NeoTreeRootName = { fg = pal.accent, bold = true },
        NeoTreeDirectoryName = { fg = pal.fg2 },
        NeoTreeDirectoryIcon = { fg = pal.accent },
        NeoTreeFileName = { fg = pal.fg },
        NeoTreeFileNameOpened = { fg = pal.accent },
        NeoTreeFloatBorder = { fg = pal.accent },
        NeoTreeFloatTitle = { fg = pal.accent },

        NeoTreeGitAdded = { fg = git.added },
        NeoTreeGitConflict = { fg = git.conflict },
        NeoTreeGitDeleted = { fg = git.removed },
        NeoTreeGitIgnored = { fg = git.ignored },
        NeoTreeGitModified = { fg = pal.cyan },
        NeoTreeGitUnstaged = { fg = pal.teal },
        NeoTreeGitUntracked = { fg = pal.magenta },
        NeoTreeGitStaged = { fg = pal.accent },
      },
      -----------------------------------------------------------------------------------------------------------------
      -- https://github.com/hrsh7th/nvim-cmp
      nvim_cmp = {
        CmpDocumentation = { fg = pal.fg, bg = pal.bg0 },
        CmpDocumentationBorder = { fg = pal.bg2, bg = pal.bg0 },

        CmpItemAbbr = { fg = pal.fg },
        CmpItemAbbrDeprecated = { fg = syn.dep, strikethrough = true },
        CmpItemAbbrMatch = { fg = pal.accent },
        CmpItemAbbrMatchFuzzy = { fg = pal.accent },

        CmpItemKindDefault = { fg = pal.fg3 },
        CmpItemMenu = { link = "Comment" },

        CmpItemKindVariable = { link = "TSVariable" },
        CmpItemKindConstant = { link = "TSConstant" },
        CmpItemKindKeyword = { link = "Keyword" },
        CmpItemKindReference = { link = "Keyword" },
        CmpItemKindValue = { link = "Keyword" },
        CmpItemKindFunction = { link = "Function" },
        CmpItemKindMethod = { link = "Function" },
        CmpItemKindConstructor = { link = "Function" },
        CmpItemKindEvent = { link = "Constant" },
        CmpItemKindUnit = { link = "Constant" },
        CmpItemKindInterface = { link = "Type" },
        CmpItemKindClass = { link = "Type" },
        CmpItemKindStruct = { link = "Type" },
        CmpItemKindEnum = { link = "Type" },
        CmpItemKindModule = { link = "TSNamespace" },
        CmpItemKindProperty = { link = "TSProperty" },
        CmpItemKindField = { link = "TSField" },
        CmpItemKindTypeParameter = { link = "TSField" },
        CmpItemKindEnumMember = { link = "TSField" },
        CmpItemKindOperator = { link = "Operator" },
        CmpItemKindSnippet = { fg = pal.fg2 },
      },
      -----------------------------------------------------------------------------------------------------------------
      -- https://github.com/SmiteshP/nvim-navic
      nvim_navic = {
        NavicIconsFile = { fg = pal.fg, bg = pal.none },
        NavicIconsModule = { fg = pal.yellow, bg = pal.none },
        NavicIconsNamespace = { fg = pal.fg, bg = pal.none },
        NavicIconsPackage = { fg = pal.fg, bg = pal.none },
        NavicIconsClass = { fg = pal.orange, bg = pal.none },
        NavicIconsMethod = { fg = pal.blue, bg = pal.none },
        NavicIconsProperty = { fg = pal.green, bg = pal.none },
        NavicIconsField = { fg = pal.green, bg = pal.none },
        NavicIconsConstructor = { fg = pal.orange, bg = pal.none },
        NavicIconsEnum = { fg = pal.orange, bg = pal.none },
        NavicIconsInterface = { fg = pal.orange, bg = pal.none },
        NavicIconsFunction = { fg = pal.blue, bg = pal.none },
        NavicIconsVariable = { fg = pal.magenta, bg = pal.none },
        NavicIconsConstant = { fg = pal.magenta, bg = pal.none },
        NavicIconsString = { fg = pal.green, bg = pal.none },
        NavicIconsNumber = { fg = pal.orange, bg = pal.none },
        NavicIconsBoolean = { fg = pal.orange, bg = pal.none },
        NavicIconsArray = { fg = pal.orange, bg = pal.none },
        NavicIconsObject = { fg = pal.orange, bg = pal.none },
        NavicIconsKey = { fg = pal.purple, bg = pal.none },
        NavicIconsKeyword = { fg = pal.purple, bg = pal.none },
        NavicIconsNull = { fg = pal.orange, bg = pal.none },
        NavicIconsEnumMember = { fg = pal.green, bg = pal.none },
        NavicIconsStruct = { fg = pal.orange, bg = pal.none },
        NavicIconsEvent = { fg = pal.orange, bg = pal.none },
        NavicIconsOperator = { fg = pal.fg, bg = pal.none },
        NavicIconsTypeParameter = { fg = pal.green, bg = pal.none },
        NavicText = { fg = pal.fg, bg = pal.none },
        NavicSeparator = { fg = pal.fg, bg = pal.none },
      },
      -----------------------------------------------------------------------------------------------------------------
      -- https://github.com/rcarriga/nvim-notify
      nvim_notify = {
        NotifyERRORBorder = { fg = diag.error },
        NotifyWARNBorder = { fg = diag.warn },
        NotifyINFOBorder = { fg = diag.info },
        NotifyDEBUGBorder = { fg = diag.hint },
        NotifyTRACEBorder = { fg = pal.bg4 },

        NotifyERRORTitle = { fg = diag.error },
        NotifyWARNTitle = { fg = diag.warn },
        NotifyINFOTitle = { fg = diag.info },
        NotifyDEBUGTitle = { fg = diag.hint },
        NotifyTRACETitle = { fg = syn.comment },

        NotifyERRORIcon = { link = "NotifyERRORTitle" },
        NotifyWARNIcon = { link = "NotifyWARNTitle" },
        NotifyINFOIcon = { link = "NotifyINFOTitle" },
        NotifyDEBUGIcon = { link = "NotifyDEBUGTitle" },
        NotifyTRACEIcon = { link = "NotifyTRACETitle" },
      },
      -----------------------------------------------------------------------------------------------------------------
      -- https://github.com/kyazdani42/nvim-tree.lua
      nvim_tree = {
        NvimTreeNormal = { fg = pal.fg2, bg = config.transparent and "NONE" or pal.bg0 },
        NvimTreeVertSplit = { link = "VertSplit" },
        NvimTreeIndentMarker = { fg = pal.bg2 },

        NvimTreeRootFolder = { fg = pal.accent, bold = true },
        NvimTreeFolderName = { fg = pal.fg2 },
        NvimTreeFolderIcon = { fg = pal.accent },
        NvimTreeOpenedFolderName = { fg = pal.accent },
        NvimTreeEmptyFolderName = { fg = syn.dep },
        NvimTreeSymlink = { fg = pal.magenta },
        NvimTreeSpecialFile = { fg = pal.blue },
        NvimTreeImageFile = { fg = pal.white },
        NvimTreeOpenedFile = { fg = pal.white },

        NvimTreeGitNew = { fg = git.added },
        NvimTreeGitDeleted = { fg = git.removed },
        NvimTreeGitDirty = { fg = git.changed },
        NvimTreeGitMerge = { fg = git.conflict },
        NvimTreeGitRenamed = { fg = pal.cyan },
        NvimTreeGitStaged = { fg = pal.accent },
      },
      -----------------------------------------------------------------------------------------------------------------
      -- https://github.com/p00f/nvim-ts-rainbow
      -- https://github.com/mrjones2014/nvim-ts-rainbow
      nvim_ts_rainbow = {
        rainbowcol1 = { fg = pal.red },
        rainbowcol2 = { fg = pal.orange },
        rainbowcol3 = { fg = pal.yellow },
        rainbowcol4 = { fg = pal.green },
        rainbowcol5 = { fg = pal.blue },
        rainbowcol6 = { fg = pal.magenta },
        rainbowcol7 = { fg = pal.cyan },
      },
      -----------------------------------------------------------------------------------------------------------------
      -- https://github.com/HiPhish/nvim-ts-rainbow2
      nvim_ts_rainbow2 = {
        TSRainbowRed = { fg = pal.red },
        TSRainbowOrange = { fg = pal.orange },
        TSRainbowYellow = { fg = pal.yellow },
        TSRainbowGreen = { fg = pal.green },
        TSRainbowBlue = { fg = pal.blue },
        TSRainbowViolet = { fg = pal.magenta },
        TSRainbowCyan = { fg = pal.cyan },
      },
      -----------------------------------------------------------------------------------------------------------------
      -- https://github.com/petertriho/nvim-scrollbar
      nvim_scrollbar = {
        ScrollbarHandle = { fg = pal.fg0, bg = syn.comment },
        ScrollbarCursorHandle = { fg = pal.accent, bg = pal.accent },
        ScrollbarCursor = { fg = pal.bg4, bg = syn.bg4 },

        ScrollbarSearchHandle = { fg = pal.visual, bg = pal.bg },
        ScrollbarSearch = { fg = pal.visual, bg = pal.bg },
        ScrollbarErrorHandle = { fg = diag.error, bg = pal.bg },
        ScrollbarError = { fg = diag.error, bg = pal.bg },
        ScrollbarWarnHandle = { fg = diag.warn, bg = pal.bg },
        ScrollbarWarn = { fg = diag.warn, bg = pal.bg },
        ScrollbarInfoHandle = { fg = diag.info, bg = pal.bg },
        ScrollbarInfo = { fg = diag.info, bg = pal.bg },
        ScrollbarHintHandle = { fg = diag.hint, bg = pal.bg },
        ScrollbarHint = { fg = diag.hint, bg = pal.bg },
        ScrollbarMiscHandle = { fg = pal.fg0, bg = pal.bg },
        ScrollbarMisc = { fg = pal.fg0, bg = pal.bg },

        ScrollbarGitAddHandle = { fg = git.added, bg = pal.bg },
        ScrollbarGitAdd = { fg = git.added, bg = pal.bg },
        ScrollbarGitChangeHandle = { fg = git.changed, bg = pal.bg },
        ScrollbarGitChange = { fg = git.changed, bg = pal.bg },
        ScrollbarGitDeleteHandle = { fg = git.removed, bg = pal.bg },
        ScrollbarGitDelete = { fg = git.removed, bg = pal.bg },
      },
      -----------------------------------------------------------------------------------------------------------------
      -- https://github.com/nvim-telescope/telescope.nvim
      telescope = {
        TelescopeBorder = { fg = pal.bg4 },
        TelescopeSelectionCaret = { fg = diag.hint },
        TelescopeSelection = { link = "CursorLine" },
        TelescopeMatching = { link = "Search" },
      },
      -----------------------------------------------------------------------------------------------------------------
      -- https://github.com/folke/trouble.nvim
      trouble = {
        TroubleCount = { link = "CursorLineNr" },
        TroubleError = { link = "DiagnosticError" },
        TroubleNormal = { fg = pal.fg },
        TroubleTextInformation = { link = "DiagnosticInfo" },
        TroubleSignWarning = { link = "DiagnosticWarn" },
        TroubleLocation = { fg = pal.fg },
        TroubleWarning = { link = "DiagnosticWarn" },
        TroublePreview = { fg = pal.fg },
        TroubleTextError = { link = "DiagnosticError" },
        TroubleSignInformation = { link = "DiagnosticInfo" },
        TroubleIndent = { fg = pal.bg2 },
        TroubleSource = { fg = pal.accent },
        TroubleSignHint = { link = "DiagnosticHint" },
        TroubleSignOther = { fg = pal.fg3 },
        TroubleFoldIcon = { link = "CursorLineNr" },
        TroubleTextWarning = { link = "DiagnosticWarn" },
        TroubleCode = { fg = pal.fg },
        TroubleInformation = { link = "DiagnosticInfo" },
        TroubleSignError = { link = "DiagnosticError" },
        TroubleFile = { fg = pal.fg },
        TroubleHint = { link = "DiagnosticHint" },
        TroubleTextHint = { link = "DiagnosticHint" },
        TroubleText = { fg = pal.fg },
      },
      -----------------------------------------------------------------------------------------------------------------
      -- https://github.com/airblade/vim-gitgutter
      vim_gitgutter = {
        GitGutterAdd = { fg = git.added }, -- diff mode: Added line |diff.txt|
        GitGutterChange = { fg = git.changed }, -- diff mode: Changed line |diff.txt|
        GitGutterDelete = { fg = git.removed }, -- diff mode: Deleted line |diff.txt|
      },
      -----------------------------------------------------------------------------------------------------------------
      -- https://github.com/RRethy/vim-illuminate
      vim_illuminate = {
        IlluminatedWordText = { link = "LspReferenceText" },
        IlluminatedWordRead = { link = "LspReferenceRead" },
        IlluminatedWordWrite = { link = "LspReferenceWrite" },
      },
      -----------------------------------------------------------------------------------------------------------------
      --https://github.com/justinmk/vim-sneak
      vim_sneak = {
        Sneak = { fg = pal.bg, bg = pal.accent },
        SneakScope = { bg = pal.visual },
      },
      -----------------------------------------------------------------------------------------------------------------
      -- https://github.com/folke/which-key.nvim
      which_key = {
        WhichKey = { link = "Identifier" },
        WhichKeyGroup = { link = "Function" },
        WhichKeyDesc = { link = "Keyword" },
        WhichKeySeperator = { link = "Comment" },
        WhichKeySeparator = { link = "Comment" },
        WhichKeyFloat = { bg = pal.bg0 },
        WhichKeyValue = { link = "Comment" },
      },
      -----------------------------------------------------------------------------------------------------------------
      -- https://github.com/gbprod/yanky.nvim
      yanky = {
        YankyPut = { link = "IncSearch" },
        YankyYanked = { link = "IncSearch" },
      },
      -----------------------------------------------------------------------------------------------------------------
    },
  }
end

M.get_highlights = function(c, config)
  local groups = M.groups(c, config)

  local highlights = {}

  for core, opts in pairs(config.core or {}) do
    if (type(opts) == "table" and opts.enabled) or opts == true then
      highlights = vim.tbl_deep_extend("force", highlights, groups[core] or {})
    end
  end

  for plug, opts in pairs(config.plugins or {}) do
    if (type(opts) == "table" and opts.enabled) or opts == true then
      highlights = vim.tbl_deep_extend("force", highlights, groups.plugins[plug] or {})
    end
  end

  -- merge highlights and user defined highlights
  return vim.tbl_deep_extend("force", highlights, config.groups or {})
end

return M
