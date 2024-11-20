return {
    {
          "williamboman/mason.nvim",
        dependencies = {
            "williamboman/mason-lspconfig.nvim",
            "neovim/nvim-lspconfig",
        },
        config = function()
            require("mason").setup()

            require("mason-lspconfig").setup {
                ensure_installed = { "lua_ls"},
                automatic_installation = true,
            }

            local lspconfig = require("lspconfig")
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            require("mason-lspconfig").setup_handlers {
                function(server_name)
                    lspconfig[server_name].setup {
                        capabilities = capabilities,
                        on_attach = function(client, bufnr)
                            local bufopts = { noremap = true, silent = true, buffer = bufnr }
                            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
                            vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
                            vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
                            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)
                            vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
                        end,
                    }
                end,
            }
        end,
    }
}
