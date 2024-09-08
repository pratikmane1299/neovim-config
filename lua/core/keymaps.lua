vim.g.mapleader = ' '

local keymap = vim.keymap

keymap.set('i', 'jj', '<Esc>', { desc = 'Return to noraml from insert mode' })

keymap.set('n', 'K', '5k', { desc = 'Move 5 lines up' })
keymap.set('n', 'J', '5j', { desc = 'Move 5 lines down' })

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

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
--vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
