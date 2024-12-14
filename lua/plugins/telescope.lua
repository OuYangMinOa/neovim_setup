return {
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config =  function()
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = 'Telescope find files' })
            -- vim.keymap.set('n', '<C-F>', require("telescope").extensions.live_grep_args.live_grep_args, { noremap = true })
        end,
    },
    {
        'debugloop/telescope-undo.nvim',
        config = function()
            require("telescope").load_extension("undo")
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<A-e>', "<cmd>Telescope undo<cr>")

        end
        -- <A-e> :Telescope undo<CR>
    }                            
}                                                                                       