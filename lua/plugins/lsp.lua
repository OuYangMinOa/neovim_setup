return {
    {
        'williamboman/nvim-lsp-installer',
        config = function()
            require('nvim-lsp-installer').setup({
                automatic_installation = true,
                ui = {
                    border = "rounded"
                }
            })
        end
    },
    {
        'neovim/nvim-lspconfig',
    },
    {
        'williamboman/mason.nvim',
        config = function()
            require('mason').setup()
        end    
    },
    {
        'williamboman/mason-lspconfig.nvim',
        config = function()
            require('mason-lspconfig').setup({
                ensure_installed = {'lua_ls', 'pyright', 'clangd', 'bashls', 'rust_analyzer'}
            })
            require('lspconfig').pyright.setup({
                python = {
                    analysis = {
                        typeCheckingMode = 'off',
                    }
                }
            })
        end
    },
    {
        'nvim-treesitter/nvim-treesitter',
        config = function()
        require('nvim-treesitter.configs').setup({
            ensure_installed = {"c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "python"},
            highlight = {
                enable = true,
            }
        })
        end
    },
    {
        'hrsh7th/nvim-cmp', -- nvim-cmp 插件
        dependencies = {
            'hrsh7th/cmp-nvim-lsp', -- LSP 源
            'hrsh7th/cmp-buffer', -- 缓冲区源
            'L3MON4D3/LuaSnip', -- Snippets 引擎
            'saadparwaiz1/cmp_luasnip', -- Snippets 源
        },
        config = function()
            local cmp = require'cmp'
            cmp.setup({
                snippet = {
                    expand = function(args)
                        require('luasnip').lsp_expand(args.body) -- 使用 LuaSnip 扩展
                    end,
                },
                mapping = {
                    ['<C-n>'] = cmp.mapping.select_next_item(),
                    ['<C-p>'] = cmp.mapping.select_prev_item(),
                    ['<C-Space>'] = cmp.mapping.complete(),
                    ['<CR>'] = cmp.mapping.confirm({ select = true }),
                },
                sources = {
                    { name = 'nvim_lsp' },
                    { name = 'buffer' },
                    { name = 'luasnip' },
                },
            })
        end,
    },

    
}                                                                                       