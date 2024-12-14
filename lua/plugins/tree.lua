return {
    {
        "nvim-tree/nvim-tree.lua",
        config = function()
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
            })
            local api = require("nvim-tree.api")
            vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent)
            vim.keymap.set('n', '<C-b>', api.tree.toggle)
        end
    },
}