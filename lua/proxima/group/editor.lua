local M = {}

function M.get(c, config)
  local trans = config.transparent
  local inv = config.inverse
  local alt = config.alt

  local pal = c.palette
  local syn = c.specs.syntax
  local diag = c.specs.diag
  local git = c.specs.git
  local diff = c.specs.diff

  return {
    ColorColumn = { bg = pal.bg2 }, -- used for the columns set with 'colorcolumn'
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
    CursorLineNr = { fg = pal.accent, style = "bold" }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen = { fg = diag.warn, style = inv.match_paren and "inverse,bold" or "bold" }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg = { fg = diag.warn, style = "bold" }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- NOTE: This was commented out as there is an issue with seting this highlight group see issue #98
    -- MsgArea         = { fg = pal.fg2 }, -- Area for messages and cmdline
    -- MsgSeparator    = {}, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg = { fg = diag.info, style = "bold" }, -- |more-prompt|
    NonText = { fg = pal.bg4 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal = { fg = pal.fg, bg = trans and "NONE" or pal.bg }, -- normal text
    NormalNC = { fg = pal.fg, bg = trans and "NONE" or alt and pal.bg0 or pal.bg }, -- normal text in non-current windows
    NormalFloat = { fg = pal.fg, bg = pal.bg0 }, -- Normal text in floating windows.
    FloatBorder = { fg = pal.fg3 }, -- TODO
    Pmenu = { fg = pal.fg2, bg = pal.bg3 }, -- Popup menu: normal item.
    PmenuSel = { fg = pal.bg, bg = pal.accent }, -- Popup menu: selected item.
    PmenuSbar = { link = "Pmenu" }, -- Popup menu: scrollbar.
    PmenuThumb = { bg = pal.visual }, -- Popup menu: Thumb of the scrollbar.
    Question = { link = "MoreMsg" }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine = { link = "CursorLine" }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search = inv.search and { style = "inverse" } or { fg = pal.bg2, bg = pal.visual }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    IncSearch = inv.search and { style = "inverse" } or { fg = pal.search, bg = diag.hint }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    SpecialKey = { link = "NonText" }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad = { sp = diag.error, style = "undercurl" }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap = { sp = diag.warn, style = "undercurl" }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal = { sp = diag.info, style = "undercurl" }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare = { sp = diag.info, style = "undercurl" }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine = { fg = pal.fg2, bg = pal.bg0 }, -- status line of current window
    StatusLineNC = { fg = pal.fg3, bg = pal.bg0 }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine = { fg = pal.fg3, bg = pal.bg2 }, -- tab pages line, not active tab page label
    TabLineFill = { bg = pal.bg0 }, -- tab pages line, where there are no labels
    TabLineSel = { fg = pal.fg0, bg = pal.bg }, -- tab pages line, active tab page label
    Title = { fg = syn.func }, -- titles for output from ":set all", ":autocmd" etpal.
    Visual = inv.visual and { style = "inverse" } or { fg = pal.bg0, bg = pal.visual }, -- Visual mode selection
    VisualNOS = inv.visual and { style = "inverse" } or { link = "visual" }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg = { fg = diag.warn }, -- warning messages
    Whitespace = { fg = pal.bg2 }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu = { link = "Pmenu" }, -- current match in 'wildmenu' completion

    -- qfLineNr        = {},
    -- qfFileName      = {},

    -- debugPC         = {}, -- used for highlighting the current line in terminal-debug
    -- debugBreakpoint = {}, -- used for breakpoint colors in terminal-debug

    -- Diff
    diffAdded = { fg = git.added },
    diffRemoved = { fg = git.removed },
    diffChanged = { fg = git.changed },
    diffOldFile = { fg = diag.warn },
    diffNewFile = { fg = diag.hint },
    diffFile = { fg = diag.info },
    diffLine = { fg = syn.builtin2 }, -- NOTE: not sure what this really is
    diffIndexLine = { fg = syn.preproc }, -- NOTE: not sure what this really is
  }
end

return M
