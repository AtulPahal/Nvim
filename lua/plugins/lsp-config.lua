return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = vim.lsp.config  -- ✅ new API (replaces require("lspconfig"))

      -- ✅ updated and modern server setup
      lspconfig("ts_ls", { capabilities = capabilities })       -- was tsserver
      lspconfig("solargraph", { capabilities = capabilities })
      lspconfig("html", { capabilities = capabilities })
      lspconfig("lua_ls", { capabilities = capabilities })

      -- ✅ Keymaps
      vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP Hover" })
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to Definition" })
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "Find References" })
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })
    end,
  },
}

