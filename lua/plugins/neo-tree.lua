return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  opts = {
    window = { position = 'right' },
  },
  keys = {
    {"<leader>ee", "<cmd>Neotree toggle<CR>", desc = "Toggle File Explorer"},
    {"<leader>ef", "<cmd>Neotree focus<CR>", desc = "Focus File Explorer"},
  },
}