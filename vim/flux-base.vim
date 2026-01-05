"_______________________________________________________________________
" Vim color file
" Maintainer:  Rebecca Rashkin <rebecca.jennifer.rabbit@gmail.com>
" Last Change: 2025 Oct  24
"_______________________________________________________________________

"_______________________________________________________________________
" NOTE
"_______________________________________________________________________
" To find a token's highlight group, place your cursor on it and run:
"
"   :echo synIDattr(synID(line('.'), col('.'), 1), 'name')
"
" The group name shows in the command area (bottom left).
"
" If blank, the token isn't recognized as part of a highlight group.
"_______________________________________________________________________


"_______________________________________________________________________
exe ':hi Normal           ctermbg ='.cli_bg_ 'guibg ='.gui_bg_
exe ':hi Normal           ctermfg ='.cli_fg_ 'guifg ='.gui_fg_

exe ':hi NonText          ctermfg ='.cli_blu 'guifg ='.gui_blu

"_______________________________________________________________________
exe ':hi Cursor           ctermbg ='.cli_yel 'guibg ='.gui_yel
exe ':hi Cursor           ctermfg ='.cli_blk 'guifg ='.gui_blk

"_______________________________________________________________________
" CursorLine: Enable with :set cursorline
" Underlines entire line where cursor is
"
" Option cursorline must be set for CursorLine* variables to take effect
"_______________________________________________________________________

" Option none disables the line
exe ':hi CursorLine       cterm   = none      gui   = none'
exe ':hi CursorLine       ctermbg ='.cli_bgb 'guibg = '.gui_blk

" CursorLineNr: Sets color of current line
exe ':hi CursorLineNr     cterm   = bold      gui   = bold'
exe ':hi CursorLineNr     ctermfg ='.cli_red 'guifg = '.gui_red

"exe ':hi CursorColumn     ctermbg ='.cli_000 'guibg = '.gui_000
"_______________________________________________________________________

" LineNr: Line number
exe ':hi LineNr           ctermfg ='.cli_gry 'guifg ='.gui_gry

"_______________________________________________________________________
" HIGHLIGHTED TEXT
"_______________________________________________________________________

" Visual: Text selection
exe ':hi Visual           cterm   =  bold     gui   =  bold'
exe ':hi Visual           ctermbg ='.cli_yel 'guibg ='.gui_yel
exe ':hi Visual           ctermfg ='.cli_blk 'guifg ='.gui_blk

" Search: Highlighted text on search
exe ':hi Search           cterm   =  bold     gui   =  bold'
exe ':hi Search           ctermfg ='.cli_yel 'guifg ='.gui_wht
exe ':hi Search           ctermbg ='.cli_drk 'guibg ='.gui_drk

" Todo: TODO, FIXME
exe ':hi Todo             ctermbg ='.cli_bgb 'guibg ='.gui_bgb
exe ':hi Todo             ctermfg ='.cli_fg_ 'guifg ='.gui_fg_

"_______________________________________________________________________
" CODE
"_______________________________________________________________________
"
exe ':hi Comment          ctermfg ='.cli_med 'guifg ='.gui_med
exe ':hi String           ctermfg ='.cli_mag 'guifg ='.gui_cya

" Special examples
"   .cpp : \n in strings, ()
exe ':hi Special          ctermfg ='.cli_yel 'guifg ='.gui_yel

" Statement examples
"   .cpp: sizeof
"   .vim: exe, let
exe ':hi Statement        ctermfg ='.cli_cya 'guifg ='.gui_grn

" Type examples
"   .cpp: int, class
"   .vim: Type, Search, Comment, Normal
exe ':hi Type             ctermfg ='.cli_mag 'guifg ='.gui_mag

" Constant examples
"   .cpp: 3 in 3 + i
"   .vim: 3 in ctermrg=3
exe ':hi Constant         ctermfg ='.cli_grn 'guifg = '.gui_grn

" MatchParen: Crnt & matching paren when one paren is under cursor
exe ':hi MatchParen       cterm   =  bold     gui   =   bold'
exe ':hi MatchParen       ctermbg ='.cli_blu 'guibg = '.gui_blu
exe ':hi MatchParen       ctermfg ='.cli_yel 'guifg = '.gui_yel

" PreProc examples
"   .cpp: #include, #define
exe ':hi PreProc          ctermfg ='.cli_blu 'guifg = '.gui_blu

" Operator examples
"   .cpp: + in 1 + 2
"   .vim: = in let foo = '0'
exe ':hi Operator         ctermfg ='.cli_red 'guifg = '.gui_red

" VimVar: Variables in vim script
"   .vim: a in let a = '0'
exe ':hi VimVar           ctermfg ='.cli_blu 'guifg = '.gui_blu


"_______________________________________________________________________
" Markdown

exe ':hi markdownH1       ctermfg ='.cli_red 'guifg = '.gui_red
exe ':hi markdownH2       ctermfg ='.cli_yel 'guifg = '.gui_yel
exe ':hi markdownH3       ctermfg ='.cli_grn 'guifg = '.gui_grn
exe ':hi markdownH4       ctermfg ='.cli_cya 'guifg = '.gui_cya

exe ':hi markdownH1       cterm   =  bold     gui   =   bold'
exe ':hi markdownH2       cterm   =  bold     gui   =   bold'
exe ':hi markdownH3       cterm   =  bold     gui   =   bold'
exe ':hi markdownH4       cterm   =  bold     gui   =   bold'

" markdownH#Delimiter: # symbols

exe ':hi markdownHeadingDelimiter ctermfg ='.cli_grn 'guifg = '.gui_grn

exe ':hi markdownH1Delimiter      ctermfg ='.cli_grn 'guifg = '.gui_grn
exe ':hi markdownH2Delimiter      ctermfg ='.cli_cya 'guifg = '.gui_cya
exe ':hi markdownH3Delimiter      ctermfg ='.cli_blu 'guifg = '.gui_blu
exe ':hi markdownH4Delimiter      ctermfg ='.cli_mag 'guifg = '.gui_mag

"_______________________________________________________________________
" These aren't working (?)
exe ':hi Identifier       ctermfg ='.cli_red 'guifg = '.gui_blk

" PreProc examples
"   .cpp: #define
exe ':hi Define           ctermfg ='.cli_blk 'guifg = '.gui_blk

" Function examples
"   .py : happy in def happy(), int
exe ':hi Function         ctermfg ='.cli_cya 'guifg = '.gui_red
exe ':hi cFunction        ctermfg ='.cli_red 'guifg = '.gui_red

"_______________________________________________________________________
" StatusLine: footers for window panes
" Note: Background (bg) and foregroung (fg) values are flipped
"_______________________________________________________________________

" StatusLine: Footer for active pane when multiple windows open
exe ':hi StatusLine       ctermfg ='.cli_blu 'guifg ='.gui_blu
exe ':hi StatusLine       ctermbg ='.cli_blk 'guibg ='.gui_blk

" StatusLineNC: Footer for inactive (non current) window pane
exe ':hi StatusLineNC     ctermbg ='.cli_wht 'guibg = '.gui_wht
exe ':hi StatusLineNC     ctermfg ='.cli_drk 'guifg = '.gui_drk

exe ':hi Statuslineterm   ctermfg ='.cli_yel 'guifg = '.gui_yel

" VertSplit: Divider between window panes
exe ':hi VertSplit        ctermbg ='.cli_cya 'guibg = '.gui_blu
exe ':hi VertSplit        ctermfg ='.cli_bgb 'guifg = '.gui_bgb

"_______________________________________________________________________
" VIM FUNCTIONALITY
"_______________________________________________________________________

" ModeMsg: Messages about current vim mode
"   *.*:  -- INSERT --, -- REPLACE --, -- VISUAL --
exe ':hi ModeMsg          ctermfg ='.cli_fg_ 'guifg = '.gui_fg_
exe ':hi MoreMsg          ctermfg ='.cli_cya 'guifg = '.gui_cya

exe ':hi Error            ctermfg ='.cli_yel 'guifg = '.gui_yel
exe ':hi ErrorMsg         ctermbg ='.cli_red 'guibg = '.gui_red
exe ':hi ErrorMsg         ctermfg ='.cli_blk 'guifg = '.gui_blk

"_______________________________________________________________________
" HIGHLIGHT GROUPS NOT IMPLEMENTED
"_______________________________________________________________________
"exe ':hi EndOfBuffer      ctermfg ='.cli_blk 'guifg = '.gui_blk
"exe ':hi StatusLineTerm   ctermfg ='.cli_blk 'guifg = '.gui_blk
"exe ':hi StatusLineTermNC ctermfg ='.cli_blk 'guifg = '.gui_blk
"exe ':hi PmenuSel         ctermfg ='.cli_blk 'guifg = '.gui_blk
"exe ':hi Pmenu            ctermfg ='.cli_blk 'guifg = '.gui_blk
"exe ':hi PmenuSbar        ctermfg ='.cli_blk 'guifg = '.gui_blk
"exe ':hi PmenuThumb       ctermfg ='.cli_blk 'guifg = '.gui_blk
"exe ':hi TabLineSel       ctermfg ='.cli_blk 'guifg = '.gui_blk
"exe ':hi TabLine          ctermfg ='.cli_blk 'guifg = '.gui_blk
"exe ':hi TabLineFill      ctermfg ='.cli_blk 'guifg = '.gui_blk
"exe ':hi ToolbarLine      ctermfg ='.cli_blk 'guifg = '.gui_blk
"exe ':hi ToolbarButton    ctermfg ='.cli_blk 'guifg = '.gui_blk
"exe ':hi SpecialKey       ctermfg ='.cli_blk 'guifg = '.gui_blk
"exe ':hi QuickFixLine     ctermfg ='.cli_blk 'guifg = '.gui_blk
"exe ':hi Folded           ctermfg ='.cli_blk 'guifg = '.gui_blk
"exe ':hi FoldColumn       ctermfg ='.cli_blk 'guifg = '.gui_blk
"exe ':hi SignColumn       ctermfg ='.cli_blk 'guifg = '.gui_blk
"exe ':hi VisualNOS        ctermfg ='.cli_blk 'guifg = '.gui_blk
"exe ':hi WarningMsg       ctermfg ='.cli_blk 'guifg = '.gui_blk
"exe ':hi Question         ctermfg ='.cli_blk 'guifg = '.gui_blk
"exe ':hi IncSearch        ctermfg ='.cli_blk 'guifg = '.gui_blk
"exe ':hi WildMenu         ctermfg ='.cli_blk 'guifg = '.gui_blk
"exe ':hi Underlined       ctermfg ='.cli_blk 'guifg = '.gui_blk
"exe ':hi lCursor          ctermfg ='.cli_blk 'guifg = '.gui_blk
"exe ':hi SpellBad         ctermfg ='.cli_blk 'guifg = '.gui_blk
"exe ':hi SpellCap         ctermfg ='.cli_blk 'guifg = '.gui_blk
"exe ':hi SpellLocal       ctermfg ='.cli_blk 'guifg = '.gui_blk
"exe ':hi SpellRare        ctermfg ='.cli_blk 'guifg = '.gui_blk
"exe ':hi Structure        ctermfg ='.cli_blk 'guifg = '.gui_blk
"exe ':hi Directory        ctermfg ='.cli_blk 'guifg = '.gui_blk
"exe ':hi Conceal          ctermfg ='.cli_blk 'guifg = '.gui_blk
"exe ':hi Ignore           ctermfg ='.cli_blk 'guifg = '.gui_blk
"exe ':hi Title            ctermfg ='.cli_blk 'guifg = '.gui_blk
"exe ':hi DiffAdd          ctermfg ='.cli_blk 'guifg = '.gui_blk
"exe ':hi DiffChange       ctermfg ='.cli_blk 'guifg = '.gui_blk
"exe ':hi DiffText         ctermfg ='.cli_blk 'guifg = '.gui_blk
"exe ':hi DiffDelete       ctermfg ='.cli_blk 'guifg = '.gui_blk

"_______________________________________________________________________
" VARIABLE DEFINITIONS
"_______________________________________________________________________
"_______________________________________________________________________
" 📄 General UI Elements
"
" Normal            : The main text area where editing occurs.
"
" NonText           : Characters that are not actually text, such as ~
"                     at the end of the buffer or trailing whitespace.
"
" EndOfBuffer       : The lines beyond the end of the buffer (often ~).
"
" StatusLine        : The status line of the current window (usually
"                     shows file name, mode, etc.).
"
" StatusLineNC      : Status lines of non-current windows.
"
" StatusLineTerm    : Terminal emulator version of the status line.
"
" StatusLineTermNC  : Terminal emulator version for non-current windows.
"
" VertSplit         : The vertical split separator between windows.
"
" LineNr            : Line numbers in the left column.
"
" CursorLineNr      : Line number of the cursor line (useful when
"                     highlighting the current line).
"
" CursorLine        : The line under the cursor (horizontal highlight).
"
" CursorColumn      : The column under the cursor (vertical highlight).
"
" ColorColumn       : Highlight column(s) (like at 80 chars for style
"                     guides).
"
" SignColumn        : Column used for signs (e.g. for GitGutter or
"                     diagnostics).
"
" Folded            : Folded text.
"
" FoldColumn        : Column showing fold levels.
"
" QuickFixLine      : The current selected quickfix list line.
"
" ToolbarLine       : Used for GUI toolbar background (rarely used).
"
" ToolbarButton     : Used for buttons in toolbars (GUI).
"
" TabLine           : The tab pages line when more than one tab page is
"                     open.
"
" TabLineSel        : The selected tab.
"
" TabLineFill       : The area after the last tab.
"
" Visual            : Visual mode selection.
"
" VisualNOS         : Visual mode when not owning the selection.
"
" MatchParen        : Highlight for matching parens.
"
" Conceal           : Hidden text shown with conceallevel > 0.
"
" Ignore            : Placeholder for ignored text (same fg and bg
"                     usually).
"
" ______________________________________________________________________
" 🗂 Menus & Popup
"
" Pmenu             : Popup menu (e.g. completion menu).
"
" PmenuSel          : Selected item in popup menu.
"
" PmenuSbar         : Scrollbar in popup menu.
"
" PmenuThumb        : Thumb (the draggable bar) of the popup menu
"                     scrollbar.
"
" WildMenu          : Wild menu (like tab-completion on command line).
"
" ______________________________________________________________________
" 🔁 Mode/Message/Interaction
"
" Cursor            : The character under the cursor (used in GUI).
"
" lCursor           : Same as above but for guicursor.
"
" ModeMsg           : Messages about mode (e.g. "-- INSERT --").
"
" WarningMsg        : Warning messages (e.g. :echohl WarningMsg).
"
" ErrorMsg          : Error messages (e.g. when a command fails).
"
" MoreMsg           : "Press ENTER" messages.
"
" Question          : Prompts like :confirm.
"
" ______________________________________________________________________
" 🔍 Search and Match
"
" Search            : Matches from / and ?.
"
" IncSearch         : While typing a search (incremental search).
"
" MatchParen        : Highlight of matching parenthesis, bracket, or
"                     brace.
"
" ______________________________________________________________________
" 🪧 Diagnostics & Spell Check
"
" Error             : Generic error highlight (can apply to code or
"                     messages).
"
" SpellBad          : Misspelled words.
"
" SpellCap          : Capitalization errors.
"
" SpellLocal        : Local spell check error.
"
" SpellRare         : Rare word warning.
"
" ______________________________________________________________________
" 🧠 Syntax Highlighting
"
" Comment           : Code comments.
"
" String            : String literals.
"
" Identifier        : Variable or constant names.
"
" VimVar            : Variables in Vim scripting
"
" Function          : Function or method names.
"
" Special           : Special characters or constructs (e.g. \n, @).
"
" Statement         : Control flow (e.g. if, for, while).
"
" Constant          : Numeric, character, boolean constants.
"
" PreProc           : Preprocessor directives (e.g. #define).
"
" Type              : Data types (int, float, etc.).
"
" Operator          : Operators (+, -, =, etc.).
"
" Define            : Macros or #define specifically.
"
" Structure         : Struct/union definitions.
"
" Directory         : Directory names in file lists.
"
" ______________________________________________________________________
" 📌 Miscellaneous
"
" Title             : Titles (e.g., window titles or headers).
"
" Underlined        : Text that is underlined.
"
" Todo              : Used for TODO, FIXME, etc. (visually highlighted).
"
" SpecialKey        : Special keyboard characters (e.g., ^I for Tab).
"
" Directory         : Directory names in netrw or command output.
"
" DiffAdd           : Lines added in a diff.
"
" DiffChange        : Changed lines in a diff.
"
" DiffText          : The actual changed text.
"
" DiffDelete        : Deleted lines in a diff.
"
" ______________________________________________________________________

