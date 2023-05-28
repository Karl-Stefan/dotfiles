----------------------------------------------------------------------------------------------------
--- General nvim config ----------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------


--- Line numbers
vim.opt.relativenumber = true
vim.opt.number = true


--- Tabs & indentation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.softtabstop = -1


--- Line wrapping
vim.opt.wrap = false


--- Search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true


--- Cursor line
vim.opt.cursorline = true


--- Appearance
vim.opt.termguicolors = true
vim.opt.background = 'dark'
vim.opt.signcolumn = 'yes'


--- Backspace
vim.opt.backspace = 'indent,eol,start'


--- Clipboard
vim.opt.clipboard:append('unnamedplus')


-- Disable netrw (required for NvimTree)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
