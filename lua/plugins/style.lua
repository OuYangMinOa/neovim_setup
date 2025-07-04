return {
    {
        'navarasu/onedark.nvim',
        config = function()
            require('onedark').setup({
                style = 'darker',
                transparent = true,
            })
            -- require('onedark').load()
            -- vim.cmd("colorscheme onedark")
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

            -- vim.cmd("colorscheme catppuccin")
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
    },
    {
        'Mofiqul/vscode.nvim',
        config = function()
            local c = require('vscode.colors').get_colors()
            require("vscode").setup({
                    transparent = true,
                    italic_comments = true,
            })
            vim.cmd("colorscheme vscode")
            require("vscode").load("dark")
            vim.api.nvim_create_autocmd("ColorScheme", {
            callback = function()
                -- devicons v0.12 之後有 refresh()；舊版可以再跑一次 setup()
                require("nvim-web-devicons").refresh()
                require("nvim-web-devicons").setup({color_icons = true})
            end,
            })
        end
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('lualine').setup()
        end
    }
}
