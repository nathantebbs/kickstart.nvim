return {
    {
        'blazkowolf/gruber-darker.nvim',
        priority = 1000, -- Make sure to load this before all the other start plugins.
        config = function()
            ---@diagnostic disable-next-line: missing-fields
            require('gruber-darker').setup {
                bold = false,
                italic = {
                    comments = false,
                },
            }

            -- Load the colorscheme here.
            vim.cmd.colorscheme 'gruber-darker'
        end,
    },
}
