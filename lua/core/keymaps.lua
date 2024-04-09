vim.g.mapleader = ' '

local keymap = vim.keymap

keymap.set('i', 'jj', '<Esc>', { desc = 'Return to noraml from insert mode' })

keymap.set('n', '<leader>nh', '<cmd>nohlsearch<CR>', { desc = 'Return to noraml from insert mode' })

-- window management
keymap.set('n', '<leader>sv', '<C-w>v', { desc = 'Split vertically to right' })
keymap.set('n', '<leader>sh', '<C-w>h', { desc = 'Split horizontally to bottom' })
keymap.set('n', '<leader>sx', '<cmd>close<CR>', { desc = 'Close current split' })

keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

keymap.set('n', '<leader>to', '<cmd>tabnew<CR>', { desc = 'Open new tab' })
keymap.set('n', '<leader>tx', '<cmd>tabclose<CR>', { desc = 'Close current tab' })
keymap.set('n', '<leader>tn', '<cmd>tabn<CR>', { desc = 'Go to next tab' })
keymap.set('n', '<leader>tp', '<cmd>tabp<CR>', { desc = 'Go to previous tab' })
-- keymap.set('n', '<leader>tf', '<cmd>tabnew %<CR>', {desc = 'Open current buffer in new tab'})
