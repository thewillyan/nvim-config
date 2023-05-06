local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        --null_ls.builtins.diagnostics.cspell,
        --null_ls.builtins.code_actions.cspell,
        null_ls.builtins.diagnostics.cpplint,
        --null_ls.builtins.formatting.clang_format.with({
            --filetypes = { "c", "cpp", "cs" }
        --}),
        null_ls.builtins.formatting.clang_format,
        null_ls.builtins.formatting.rustfmt,
    },
})
