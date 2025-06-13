return {
    -- NEORG
    {
        'nvim-neorg/neorg',
        lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
        version = '*', -- Pin Neorg to the latest stable release
        config = function()
            require('neorg').setup {
                load = {
                    -- Defaults
                    ['core.defaults'] = {},
                    ['core.concealer'] = {},
                    ['core.summary'] = {},
                    ['core.highlights'] = {},
                    ['core.completion'] = {
                        config = {
                            engine = 'nvim-cmp',
                        },
                    },
                    ['core.dirman'] = {
                        config = {
                            workspaces = {
                                notes = '~/notes',
                            },
                            default_workspace = 'notes',
                        },
                    },
                    ['core.keybinds'] = {
                        config = {
                            default_keybinds = false,
                        },
                    },
                },
            }
        end,
    },
}
