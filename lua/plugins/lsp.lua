-- Lazy.nvim plugin configuration for Phpactor
return {
  "neovim/nvim-lspconfig", -- Main LSP configuration plugin
  event = { "BufReadPre", "BufNewFile" }, -- Lazy load LSP when opening files
  dependencies = {
    "phpactor/phpactor", -- Phpactor dependency
    build = function()
      vim.fn.system({ "composer", "install", "--no-dev", "--optimize-autoloader" })
    end,
  },
  config = function()
    local lspconfig = require("lspconfig")

    -- Setup diagnostic options
    vim.diagnostic.config({
      virtual_text = true, -- Display diagnostics inline
      signs = true,        -- Show signs in the gutter
      update_in_insert = false,
      severity_sort = true,
    })

    -- Function to handle common on_attach actions
    local on_attach = function(client, bufnr)
      local opts = { noremap = true, silent = true, buffer = bufnr }

      -- Key mappings for LSP
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
      vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
      vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
      vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
      vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)

      print("Phpactor LSP attached to buffer " .. bufnr)
    end

    -- Phpactor LSP configuration
    lspconfig.phpactor.setup({
      on_attach = on_attach,
      init_options = {
        ["language_server_phpstan.enabled"] = true,
        ["language_server_psalm.enabled"] = true,
      },
    })
  end,
}

