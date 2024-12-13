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
                ensure_installed = {'lua_ls', 'pyright', 'clangd', 'bashls', 'jedi_language_server', 'rust_analyzer', 'gopls', 'tsserver'}
            })
            require('lspconfig').pyright.setup({
                python = {
                    analysis = {
                        typeCheckingMode = 'off'
                    }
                }
            })
        end
    },
    
}                                                                                       