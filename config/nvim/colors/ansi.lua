vim.cmd("highlight clear")
vim.o.background = "dark"
vim.g.colors_name = "ansi"
vim.o.termguicolors = false
local hl = vim.api.nvim_set_hl

-- This color scheme relies on ANSI colors only. It automatically inherits
-- the 16 colors of your terminal color scheme. You can change the colors of
-- certain highlight groups by picking a different color from the following set
-- of colors. If you sticked to the ANSI color palette conventions when setting
-- colors in your terminal emulator, this will look pretty neat. If you used
-- a terminal color scheme that uses a different convention (e.g. base16)
-- colors will likely look very odd if you use this color scheme.
--
-- 0: Black        │   8: Bright Black (dark gray)
-- 1: Red          │   9: Bright Red
-- 2: Green        │  10: Bright Green
-- 3: Yellow       │  11: Bright Yellow
-- 4: Blue         │  12: Bright Blue
-- 5: Magenta      │  13: Bright Magenta
-- 6: Cyan         │  14: Bright Cyan
-- 7: White (gray) │  15: Bright White
--
-- Use the 'cterm' argument to make certain highlight groups appear in italic
-- (if your terminal and font support it), bold, reverse, underlined, etc.
-- See ':help attr-list' for possible options.

-- Editor Elements
hl(0, 'Normal',  {ctermfg = 255})
-- hl(0, 'Cursor', {ctermfg = 235,  ctermbg = 39})
hl(0, 'CursorLine', {ctermbg = 237})
hl(0, 'CursorLineNr', {ctermbg = 237})
-- hl(0, 'Visual', {ctermbg = 237})
hl(0, 'LineNr', {ctermfg = 250, ctermbg = 236})
-- hl(0, 'NonText', {ctermfg = 238})
-- hl(0, 'SpecialKey', {ctermfg = 238})
hl(0, 'StatusLine', {ctermbg = 236})
-- hl(0, 'StatusLineNC', {ctermfg = 59})
-- hl(0, 'TabLine', {ctermfg = 59})
-- hl(0, 'TabLineFill', {})
-- hl(0, 'TabLineSel', {ctermfg = 145})
hl(0, 'ColorColumn', {ctermbg = 237})
hl(0, 'SignColumn', {ctermbg = 236})
-- hl(0, 'FoldColumn', {})
-- hl(0, 'Folded', {ctermfg = 59})
-- hl(0, 'Pmenu', {ctermfg = 145, ctermbg = 237})
-- hl(0, 'PmenuSbar', {ctermbg = 236})
-- hl(0, 'PmenuSel', {ctermfg = 236, ctermbg = 39, blend = 0})
-- hl(0, 'PmenuThumb', {ctermbg = 145})
-- hl(0, 'WildMenu', {ctermfg = 235, ctermbg = 39})
-- hl(0, 'DiffAdd', {ctermfg = 235, ctermbg = 114})
-- hl(0, 'DiffChange', {ctermfg = 180, underline = true})
-- hl(0, 'DiffDelete', {ctermfg = 235, ctermbg = 204})
-- hl(0, 'DiffText', {ctermfg = 235, ctermbg = 180})
-- hl(0, 'MatchParen', {ctermfg = 39, underline = true})
-- hl(0, 'Search', {ctermfg = 235, ctermbg = 180})
-- hl(0, 'IncSearch', {ctermfg = 180, ctermbg = 59})
-- hl(0, 'DiagnosticError', {ctermfg = 204})
-- hl(0, 'DiagnosticHint', {ctermfg = 38})
-- hl(0, 'DiagnosticInfo', {ctermfg = 39})
-- hl(0, 'DiagnosticWarn', {ctermfg = 180})
-- hl(0, 'ErrorMsg', {ctermfg = 204})
-- hl(0, 'WarningMsg', {ctermfg = 180})
-- hl(0, 'Question', {ctermfg = 170})
-- hl(0, 'MoreMsg', {ctermfg = 114})
-- hl(0, 'Directory', {ctermfg = 39})
-- hl(0, 'SpellBad', {ctermfg = 204, underline = true})
-- hl(0, 'SpellCap', {ctermfg = 173})
-- hl(0, 'SpellLocal', {ctermfg = 173})
-- hl(0, 'SpellRare', {ctermfg = 173})
-- hl(0, 'Title', {ctermfg = 114})
-- hl(0, 'Conceal', {})
hl(0, 'CursorColumn', {link = 'StatusLine'})
hl(0, 'WinSeparator', {ctermfg = 236})
hl(0, 'ModeMsg', {link = 'MoreMsg'})
hl(0, 'VisualNOS', {link = 'Visual'})
hl(0, 'NormalFloat', {link = 'Normal'})
hl(0, 'FloatBorder', {link = 'Normal'})

-- Base syntax
hl(0, 'Boolean', {ctermfg = 173})
hl(0, 'Character', {ctermfg = 114})
hl(0, 'Comment', {ctermfg = 59})
hl(0, 'Conditional', {ctermfg = 170})
hl(0, 'Constant', {ctermfg = 38})
hl(0, 'Debug', {})
hl(0, 'Define', {ctermfg = 170})
hl(0, 'Delimiter', {})
hl(0, 'Error', {ctermfg = 204})
hl(0, 'Exception', {ctermfg = 170})
hl(0, 'Define', {ctermfg = 170})
hl(0, 'Float', {ctermfg = 173})
hl(0, 'Function', {ctermfg = 39})
hl(0, 'Number', {ctermfg = 173})
hl(0, 'Operator', {ctermfg = 170})
hl(0, 'Identifier', {ctermfg = 204})
hl(0, 'Include', {ctermfg = 39})
hl(0, 'Keyword', {ctermfg = 170})
hl(0, 'Label', {ctermfg = 170})
hl(0, 'Macro', {ctermfg = 170})
hl(0, 'PreCondit', {ctermfg = 180})
hl(0, 'PreProc', {ctermfg = 180})
hl(0, 'Repeat', {ctermfg = 170})
hl(0, 'Special', {ctermfg = 39})
hl(0, 'SpecialChar', {ctermfg = 173})
hl(0, 'SpecialComment', {ctermfg = 59})
hl(0, 'Statement', {ctermfg = 170})
hl(0, 'StorageClass', {ctermfg = 180})
hl(0, 'String', {ctermfg = 114})
hl(0, 'Structure', {ctermfg = 180})
hl(0, 'Todo', {ctermfg = 170})
hl(0, 'Type', {ctermfg = 180})
hl(0, 'Typedef', {ctermfg = 180})

-- Built-in groups

-- Syntax: Netrw
hl(0, 'netrwDir', {link = 'Function'})
hl(0, 'netrwHelpCmd', {link = 'Special'})
hl(0, 'netrwMarkFile', {reverse = true})

-- Syntax: vim
-- hl(0, 'vimVar', {fg = 'fg'})

-- Syntax: lua
hl(0, 'luaFunction', {link = 'Function'})
hl(0, 'luaConstant', {link = 'Boolean'})
-- hl(0, 'luaTable', {fg = 'fg'})

-- Syntax: html
hl(0, 'htmlEndTag', {link = 'Function'})

-- Syntax: javascript
-- hl(0, 'javaScript', {fg = 'fg'})
-- hl(0, 'javaScriptBraces', {fg = 'fg'})

-- Syntax: typescript
-- hl(0, 'typescriptBraces', {fg = 'fg'})
-- hl(0, 'typescriptParens', {fg = 'fg'})
hl(0, 'typescriptImport', {link = 'Keyword'})
hl(0, 'typescriptTry', {link = 'Keyword'})
hl(0, 'typescriptExceptions', {link = 'Keyword'})

-- Treesitter
-- hl(0, '@variable', {fg = 'fg'})
-- hl(0, '@constructor.lua', {fg = 'fg'})

-- Terminal
-- vim.g.terminal_color_0 = '#282c34'
-- vim.g.terminal_color_1 = '#e06c75'
-- vim.g.terminal_color_2 = '#98c379'
-- vim.g.terminal_color_3 = '#e5c07b'
-- vim.g.terminal_color_4 = '#61afef'
-- vim.g.terminal_color_5 = '#c678dd'
-- vim.g.terminal_color_6 = '#56b6c2'
-- vim.g.terminal_color_7 = '#abb2bf'
-- vim.g.terminal_color_8 = '#3e4452'
-- vim.g.terminal_color_9 = '#be5046'
-- vim.g.terminal_color_10 = '#98c379'
-- vim.g.terminal_color_11 = '#d19a66'
-- vim.g.terminal_color_12 = '#61afef'
-- vim.g.terminal_color_13 = '#c678dd'
-- vim.g.terminal_color_14 = '#56b6c2'
-- vim.g.terminal_color_15 = '#5c6370'
