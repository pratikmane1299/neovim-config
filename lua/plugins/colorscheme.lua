--[[ return {
  { "Mofiqul/dracula.nvim" },

  -- Configure LazyVim to load dracula
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula",
    },
  },
} ]]

return {
  'folke/tokyonight.nvim',
  lazy = false,
  priority = 1000,
  opts = {
    style = 'moon',
  },
  init = function()
    vim.cmd.colorscheme 'tokyonight-night'
    vim.cmd.hi 'Comment gui=none'
  end,
  --[[ {
    'LazyVim/LazyVim',
    opts = {
      colorscheme = 'tokyonight',
    },
  }, ]]
}
