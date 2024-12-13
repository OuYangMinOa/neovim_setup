return {
    {
        "akinsho/toggleterm.nvim",
        config = function()
            require("toggleterm").setup({
                open_mapping = [[<C-\>]], 
                size = 20, 
                float_opts = {
                    border = 'curved',  -- 邊框樣式
                    winblend = 25,      -- 透明度
                },
                highlights = {
                    Normal = { guibg = 'NONE', guifg = '#00ff00' },  -- 設置背景和前景顏色
                    NormalFloat = { guibg = 'NONE', guifg = '#000000' },  -- 浮動窗口的顏色
                },
            })
        end
    }
}