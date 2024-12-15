return {
    {
        "nvim-tree/nvim-tree.lua",
        config = function()
            local api = require("nvim-tree.api")

            require("nvim-tree").setup({
                sort = {
                    sorter = "case_sensitive",
                },
                view = {
                    width = 30,
                },
                renderer = {
                    group_empty = true,
                },
                filters = {
                    dotfiles = true,
                },
                -- on_attach = function(bufnr)
                --     vim.keymap.set('n', '<C-e>', function()
                --         api.tree.expand_all()
                --     end, { buffer = bufnr, desc = "Expand all nodes" })
                -- end,
            })
            vim.keymap.set('n', '<C-A-e>', "<cmd>lua require('nvim-tree.api').tree.expand_all()<CR>")
            vim.keymap.set('n', '<C-b>', api.tree.toggle)
            vim.keymap.set('n', '?', api.tree.toggle_help)

        end
    },
}