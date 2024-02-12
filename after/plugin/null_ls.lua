local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        --null_ls.builtins.diagnostics.cspell,
        --null_ls.builtins.code_actions.cspell,
        -- null_ls.builtins.diagnostics.cpplint,
        null_ls.builtins.formatting.clang_format.with({
            filetypes = { "c", "cpp", "cs" }
        }),
        null_ls.builtins.formatting.clang_format,
        null_ls.builtins.formatting.rustfmt,
        null_ls.builtins.formatting.sql_formatter,
        -- null_ls.builtins.diagnostics.sqlfluff.with({
        --     extra_args = { "--dialect", "postgres" }, -- change to your dialect
        -- }),
        --null_ls.builtins.diagnostics.markdownlint,
        --null_ls.builtins.formatting.prettier
    },
})
