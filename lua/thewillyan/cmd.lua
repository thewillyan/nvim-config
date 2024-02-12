vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]

-- Update LSP related stuff
function UpdateAll()
    vim.cmd('so ~/.config/nvim/lua/thewillyan/packer.lua')
    vim.cmd('PackerUpdate')
    -- TODO: Update Mason Packages
    vim.cmd('MasonUpdate')
    vim.cmd('TSUpdate')
end

vim.api.nvim_create_user_command('UpdateAll', UpdateAll, {})
