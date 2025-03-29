return {
    {
        'nvim-tree/nvim-web-devicons', opts = {},
        config = function()
            require("nvim-web-devicons").setup({
                color_icons = true;
                -- globally enable default icons (default to false)
                -- will get overriden by `get_icons` option
                default = true;
                -- globally enable "strict" selection of icons - icon will be looked up in
                -- different tables, first by filename, and if not found by extension; this
                -- prevents cases when file doesn't have any extension but still gets some icon
                -- because its name happened to match some extension (default to false)
                strict = true;
                variant = "light|dark";
            })
        end
    },
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
