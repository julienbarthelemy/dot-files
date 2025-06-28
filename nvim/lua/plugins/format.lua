return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        css = { "prettierd" },
        html = { "prettierd" },
        javascript = { "prettierd" },
        javascriptreact = { "prettierd" },
        json = { "prettierd" },
        jsonc = { "prettierd" },
        lua = { "stylua" },
        mdx = { "prettierd" },
        python = { "black" },
        rust = { "rustfmt" },
        typescript = { "prettierd" },
        typescriptreact = { "prettierd" },
      },
      format_after_save = {
        lsp_fallback = true,
        quiet = true,
      },
    },
  },
}
