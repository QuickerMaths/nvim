return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    {
      "williamboman/mason-lspconfig.nvim",
      config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({
          ensure_installed = { "pyright" },
        })

        -- Setup capabilities for nvim-cmp
        local capabilities = vim.tbl_deep_extend(
          "force",
          {},
          vim.lsp.protocol.make_client_capabilities(),
          require("cmp_nvim_lsp").default_capabilities()
        )

        -- Setup Pyright with cmp capabilities
        require("lspconfig").pyright.setup({
          capabilities = capabilities,
        })

        -- Optional: Keymaps for LSP
        vim.api.nvim_create_autocmd("LspAttach", {
          callback = function(ev)
            local opts = { buffer = ev.buf }
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
            vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
            vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
            vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
          end,
        })
      end,
    },
  },
}

