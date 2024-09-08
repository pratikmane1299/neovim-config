local opt = vim.opt

opt.relativenumber = true
opt.number = true

opt.tabstop = 2 -- 2 spaces for tabs
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- opt.have_nerd_font = true

-- Decrease update time
opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
opt.timeoutlen = 300

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
opt.list = true
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- search settings
opt.hlsearch = true
opt.ignorecase = true
opt.smartcase = true

opt.signcolumn = 'yes'

-- clipboard
opt.clipboard = 'unnamedplus' -- use system clipboard

--split windows
opt.splitright = true -- split vertically to the right
opt.splitbelow = true -- split horizontally to the bottom

opt.showmode = false -- Don't show the mode, since it's already in the status line

opt.breakindent = true -- Enable break indent

opt.undofile = true -- Save undo history

opt.cursorline = true -- Show which line your cursor is on

opt.scrolloff = 10 -- Minimal number of screen lines to keep above and below the cursor.

opt.inccommand = 'split' -- Preview substitutions live, as you type

opt.mouse = 'a' -- Enable mouse mode, can be useful for resizing splits for example!
