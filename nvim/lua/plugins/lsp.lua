return {
  {
    "neovim/nvim-lspconfig",
  },
  {
    "hrsh7th/cmp-nvim-lsp",
    config = function()
      vim.lsp.config("*", {
        capabilities = require("cmp_nvim_lsp").default_capabilities(),
      })
    end,
  },
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
    opts = {
      ensure_installed = {
        "clangd",
        "cssls",
        "emmet_language_server",
        "graphql",
        "html",
        "lua_ls",
        "mdx_analyzer",
        "pyright",
        "pylsp",
        "rust_analyzer",
        "tailwindcss",
        "ts_ls",
      },
    },
  },
}
