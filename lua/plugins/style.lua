return {
    {
        'navarasu/onedark.nvim',
        config = function()
            require('onedark').setup({
                style = 'darker',
                transparent = true,
            })
            require('onedark').load()
            vim.cmd("colorscheme onedark")
        end
    },
    {
        'catppuccin/nvim', 
        config = function()
            require("catppuccin").setup({
                flavour = "macchiato",
                background ="#000000",
                transparent_background = true,
            })
            vim.cmd("colorscheme catppuccin")
        end

    },
    {
        'chentoast/marks.nvim',
        config = function()
            require('marks').setup( {
                default_mappings = true,
                builtin_marks = { ".", "<", ">", "^"}, 
                cyclic = true,
                refresh_interval = 250,
            })
        end
    }
}