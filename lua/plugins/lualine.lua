return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  --[[ opts = {
    theme = 'tokyonight',
  }, ]]
  config = function()
    require('lualine').setup {
      options = {
        theme = 'tokyonight',
        icons_enabled = true,
        component_separators = '|',
        section_separators = '',
      },
    }
  end,
}
