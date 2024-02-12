-- This is your opts table
require("telescope").setup {
    defaults = {
        extensions = {
            ["ui-select"] = require("telescope.themes").get_dropdown {}
        }
    }
}

-- To get ui-select loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require("telescope").load_extension("ui-select")

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>g', builtin.git_files, {})
vim.keymap.set('n', '<leader>s', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
