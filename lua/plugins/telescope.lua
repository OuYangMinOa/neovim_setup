return {
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = {
            {'nvim-lua/plenary.nvim'},{
            "isak102/telescope-git-file-history.nvim",
                dependencies = {
                    "nvim-lua/plenary.nvim",
                    "tpope/vim-fugitive"
                }
            }
        },
        config =  function()
            local builtin = require('telescope.builtin')
            require("telescope").load_extension("git_file_history")
            vim.keymap.set('n', '<A-g>', '<cmd>Telescope git_file_history<CR>', { desc = 'Telescope git history' })
            vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = 'Telescope find files' })
            vim.keymap.set('n', '<C-h>', function() require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")}) end )
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
                                                                                 