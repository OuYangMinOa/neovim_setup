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
        config = function()
            vim.diagnostic.config({
                virtual_text = true,
                signs = true,
                underline = {
                    severity = { min = vim.diagnostic.severity.ERROR },
                },
                severity_sort = true,
            })

            vim.cmd [[
                highlight DiagnosticUnderlineError gui=underline guisp=Red
            ]]
        end,
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
    {
        'nvim-treesitter/nvim-treesitter-context',
        config = function()
            require('treesitter-context').setup({
            enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
            multiwindow = false, -- Enable multiwindow support.
            max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
            min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
            line_numbers = true,
            multiline_threshold = 20, -- Maximum number of lines to show for a single context
            trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
            mode = 'cursor',  -- Line used to calculate context. Choices: 'cursor', 'topline'
            -- Separator between context and content. Should be a single character string, like '-'.
            -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
            separator = nil,
            zindex = 20, -- The Z-index of the context window
            on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
            })
        end
    },
    {
        "linux-cultist/venv-selector.nvim",
        dependencies = {"neovim/nvim-lspconfig","mfussenegger/nvim-dap", "mfussenegger/nvim-dap-python",},
        lazy   = false,
        branch = "regexp", -- This is the regexp branch, use this for the new version
    }
}                                                                                       