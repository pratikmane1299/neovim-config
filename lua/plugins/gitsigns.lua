-- Here is a more advanced example where we pass configuration
-- options to `gitsigns.nvim`. This is equivalent to the following Lua:
--    require('gitsigns').setup({ ... })
--
-- See `:help gitsigns` to understand what the configuration keys do

return { -- Adds git related signs to the gutter, as well as utilities for managing changes
  'lewis6991/gitsigns.nvim',
  opts = {
    signs = {
      add = { text = '┃' },
      change = { text = '┃' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
    },
  },

  config = function()
    require('gitsigns').setup {
      on_attach = function(bufnr)
        local gitsigns = require 'gitsigns'

        local function map(mode, l, r, opts)
          opts = opts or {}
          opts.buffer = bufnr
          vim.keymap.set(mode, l, r, opts)
        end

        --Naivgatin
        map('n', ']c', function()
          if vim.wo.diff then
            vim.cmd.normal { 'c', bang = true }
          else
            gitsigns.nav_hunk 'next'
          end
        end, { desc = 'Move to next hunk' })

        map('n', '[c', function()
          if vim.wo.diff then
            vim.cmd.normal { 'c', bang = true }
          else
            gitsigns.nav_hunk 'next'
          end
        end, { desc = 'Move to prev hunk' })

        -- Actions
        map('n', '<leader>hs', gitsigns.stage_hunk, { desc = 'Stage hunk in normal mode' })
        map('n', '<leader>hr', gitsigns.reset_hunk, { desc = 'Reset hunk in normal mode' })
        map('v', '<leader>hs', function()
          gitsigns.stage_hunk { vim.fn.line '.', vim.fn.line 'v' }
        end, { desc = 'Stage hunk in visual mode' })
        map('v', '<leader>hr', function()
          gitsigns.reset_hunk { vim.fn.line '.', vim.fn.line 'v' }
        end, { desc = 'Reset hunk in visual mode' })
        map('n', '<leader>hS', gitsigns.stage_buffer, { desc = 'Stage current buffer' })
        map('n', '<leader>hu', gitsigns.undo_stage_hunk, { desc = 'Un stage hunk in normal mode' })
        map('n', '<leader>hR', gitsigns.reset_buffer, { desc = 'Reset buffer' })
        map('n', '<leader>hp', gitsigns.preview_hunk, { desc = 'Preview hunk' })
        map('n', '<leader>hb', function()
          gitsigns.blame_line { full = true }
        end, { desc = 'View blame for current line' })
        map('n', '<leader>tb', gitsigns.toggle_current_line_blame, { desc = 'Toggle blame for current line' })
        map('n', '<leader>hd', gitsigns.diffthis, { desc = 'View diff' })
        map('n', '<leader>hD', function()
          gitsigns.diffthis '~'
        end, { desc = 'View diff' })
        map('n', '<leader>td', gitsigns.toggle_deleted, { desc = 'Toggle deleted' })

        -- Text object
        map({ 'o', 'x' }, 'ih', ':<C-U>Gitsigns select_hunk<CR>', { desc = 'Select hunk' })
      end,
    }
  end,
}
