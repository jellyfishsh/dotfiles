return {
    {
        "williamboman/mason.nvim",
        opts = {}
    },
    {
        "williamboman/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {"lua-ls", "clangd", "ts_ls", "pyright", "zls", "hls", "bashls"}
        }
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            require("lspconfig").lua_ls.setup({})
            require("lspconfig").clangd.setup({})
            require("lspconfig").ts_ls.setup({})
            require("lspconfig").eslint.setup({})
            require("lspconfig").pyright.setup({})
            require("lspconfig").zls.setup({})
            require("lspconfig").hls.setup({})
        end
    },
    {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'saadparwaiz1/cmp_luasnip',
    },
    {
        'L3MON4D3/LuaSnip',
        dependencies = {'rafamadriz/friendly-snippets'},
    },
    {
        'hrsh7th/nvim-cmp',
        config = function()
            local cmp = require('cmp')
            local cmp_select = {behavior = cmp.SelectBehavior.Select}
            cmp.setup({
                snippet = {
                    expand = function(args)
                        require('luasnip').lsp_expand(args.body)
                        require('luasnip.loaders.from_vscode').lazy_load()
                    end,
                },
                window = {

                },
                mapping = cmp.mapping.preset.insert({
                    ['<C-Space>'] = cmp.mapping.complete(),
                    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
                    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
                    ['<Tab>'] = cmp.mapping.confirm({ select = true }),
                }),
                sources = cmp.config.sources({
                    { name = 'nvim_lsp' },
                    { name = 'luasnip' },
                }),
            })
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            require("lspconfig").lua_ls.setup({
                capabilities = capabilities
            })
            require("lspconfig").clangd.setup({
                capabilities = capabilities
            })
            require("lspconfig").ts_ls.setup({
                capabilities = capabilities
            })
            require("lspconfig").eslint.setup({
                capabilities = capabilities
            })
            require("lspconfig").pyright.setup({
                capabilities = capabilities
            })
            require("lspconfig").zls.setup({
                capabilities = capabilities
            })
            require("lspconfig").hls.setup({
                capabilities = capabilities
            })
        end
    }


}
