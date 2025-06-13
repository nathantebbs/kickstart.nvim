-- init.lua

require 'config'

-- [[ Install `lazy.nvim` plugin manager ]]
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
    local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
    if vim.v.shell_error ~= 0 then
        error('Error cloning lazy.nvim:\n' .. out)
    end
end

---@type vim.Option
local rtp = vim.opt.rtp
rtp:prepend(lazypath)

return {
    require('lazy').setup({
        require 'kickstart.plugins.autopairs',
        require 'kickstart.plugins.debug',
        require 'kickstart.plugins.gitsigns',
        require 'kickstart.plugins.indent_line',
        require 'kickstart.plugins.lint',
        { import = 'plugins' },
    }, {
        ui = { icons = {} },
    }),
}

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
