return {
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('dashboard').setup {
        theme = 'hyper', -- or 'doom'
        config = {
          week_header = { enable = true }, -- shows the current week header
          shortcut = {
            { desc = '󰈞 Find File', group = 'Label', action = 'Telescope find_files', key = 'f' },
            { desc = ' New File', group = 'Label', action = 'ene | startinsert', key = 'n' },
            { desc = ' Recent', group = 'Label', action = 'Telescope oldfiles', key = 'r' },
            { desc = '󰈹 Find Word', group = 'Label', action = 'Telescope live_grep', key = 'w' },
            { desc = ' Quit', group = 'Label', action = 'qa', key = 'q' },
          },
        },
      }
    end,
  },
}
