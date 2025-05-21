return {
    {'kevinhwang91/promise-async'},
    {
        "kevinhwang91/nvim-ufo",
        requires = 'kevinhwang91/promise-async',
        config = function()
            require('ufo').setup()
            local ufo = require('ufo')
            
            vim.o.foldcolumn     = '1'
            vim.o.foldlevel      = 99
            vim.o.foldlevelstart = 99   
            vim.o.foldenable     = true 

            require('ufo').setup({
            provider_selector = function(_, filetype)
                return { 'treesitter', 'indent' }
            end,
            })
            
            vim.keymap.set('n', '<C-k>0', function() require('ufo').closeFoldsWith(0) end)
            vim.keymap.set('n', '<C-k>1', function() require('ufo').closeFoldsWith(1) end)
            vim.keymap.set('n', '<C-k>2', function() require('ufo').closeFoldsWith(2) end)
            vim.keymap.set('n', '<C-k>3', function() require('ufo').closeFoldsWith(3) end)
            vim.keymap.set('n', '<C-k>4', function() require('ufo').closeFoldsWith(4) end)
            vim.keymap.set('n', '<C-k><C-j>', require('ufo').openAllFolds)
            -- vim.keymap.set('n', 'zM', ufo.closeAllFolds)
        end
        
    }
}