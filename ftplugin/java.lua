local config = {
    cmd = {'/home/will/.local/share/nvim/mason/bin/jdtls'},
    root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
    flags = { debounce_text_changes = 80 },
    settings = {
        java = {
            format = {
                settings = {
                    url = "/home/will/.local/share/nvim/mason/bin/clang-format",
                    --profile = "GoogleStyle",
                },
            },
            signatureHelp = { enabled = true },
            --contentProvider = { preferred = 'fernflower' },  -- Use fernflower to decompile library code
            -- Specify any completion options
            completion = {
                favoriteStaticMembers = {
                    "org.hamcrest.MatcherAssert.assertThat",
                    "org.hamcrest.Matchers.*",
                    "org.hamcrest.CoreMatchers.*",
                    "org.junit.jupiter.api.Assertions.*",
                    "java.util.Objects.requireNonNull",
                    "java.util.Objects.requireNonNullElse",
                    "org.mockito.Mockito.*"
                },
                filteredTypes = {
                    "com.sun.*",
                    "io.micrometer.shaded.*",
                    "java.awt.*",
                    "jdk.*", "sun.*",
                },
            },
            -- Specify any options for organizing imports
            sources = {
                organizeImports = {
                    starThreshold = 9999;
                    staticStarThreshold = 9999;
                },
            },
            -- How code generation should act
            codeGeneration = {
                toString = {
                    template = "${object.className}{${member.name()}=${member.value}, ${otherMembers}}"
                },
                hashCodeEquals = {
                    useJava7Objects = true,
                },
                useBlocks = true,
            },
        }
    },
}
require('jdtls').start_or_attach(config)
