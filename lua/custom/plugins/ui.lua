-- ui.lua
--
-- UI plugins. In my head, I consider these plugins mainly
-- for their functionality to display things seperate from "writing code".
--
-- This includes things like a status line all the way to rendering latex
-- or organizing notes with neorg.

return {
    -- LUALINE
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        opts = {
            use_icons = true,
            theme = 'gruber-darker',
        },
    },

    -- VIMTEX
    {
        'lervag/vimtex',
        lazy = false, -- we don't want to lazy load VimTeX
        -- tag = "v2.15", -- uncomment to pin to a specific release
        init = function()
            -- VimTeX configuration goes here, e.g.
            vim.g.vimtex_view_method = 'mupdf'
        end,
    },

    -- NEORG
    {
        'nvim-neorg/neorg',
        lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
        version = '*', -- Pin Neorg to the latest stable release
        config = function()
            require('neorg').setup {
                load = {
                    ['core.defaults'] = {},
                    ['core.concealer'] = {},
                    ['core.summary'] = {},
                    ['core.highlights'] = {},
                    ['core.integrations.treesitter'] = {},
                    ['core.dirman'] = {
                        config = {
                            workspaces = {
                                notes = '~/notes',
                            },
                            default_workspace = 'notes',
                        },
                    },
                },
            }
        end,
    },
}
