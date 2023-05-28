----------------------------------------------------------------------------------------------------
---  Keymaps setup ---------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

-- Remap leaderkey
vim.g.mapleader = ' '

-- General keymaps
vim.keymap.set('n', '<leader>l', ':nohl<CR>') -- Clear search

-- Plugin keymaps
vim.keymap.set('n', '<C-n>', ':NvimTreeFocus<CR>', { silent = true } ) -- Toggle NvimTree
vim.keymap.set('n', '<C-l>', ':BufferLineCycleNext<CR>', { silent = true } ) -- Toggle NvimTree
vim.keymap.set('n', '<C-h>', ':BufferLineCyclePrev<CR>', { silent = true } ) -- Toggle NvimTree
