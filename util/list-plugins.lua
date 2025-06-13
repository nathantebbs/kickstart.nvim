for _, plugin in ipairs(require('lazy').plugins()) do
    vim.cmd('redir >> plugins.txt | echo "' .. plugin[1] .. '" | redir END')
end
