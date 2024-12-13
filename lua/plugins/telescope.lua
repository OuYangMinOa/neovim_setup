return {
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config =  function()
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = 'Telescope find files' })
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