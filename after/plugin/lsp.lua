local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ["<C-Space>"] = cmp.mapping.complete(),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
})

lsp.setup_nvim_cmp({
    mapping = cmp_mappings,
    window = {
        documentation = cmp.config.window.bordered(),
        completion = cmp.config.window.bordered(),
    },
})

lsp.configure('rust_analyzer', {
    settings = {
        ['rust-analyzer'] = {
            assist = {
                importEnforceGranularity = true,
                importPrefix = 'crate',
            },
            cargo = { allFeatures = true, },
            checkOnSave = { command = 'clippy', },
            inlayHints = { locationLinks = false },
            diagnostics = {
                enable = true,
                experimental = { enable = true, },
            },
        },
    },
})
-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()
