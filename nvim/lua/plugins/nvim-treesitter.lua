return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",

    config = function()
      -- import nvim-treesitter plugin
      local treesitter = require("nvim-treesitter.configs")

      -- configure treesitter
      treesitter.setup({
        highlight = { enable = true },
        indent = { enable = true },
        sync_install = true,
        auto_install = true,
        -- ensure these language parsers are installed
        ensure_installed = {
          "json",
          "javascript",
          "typescript",
          "tsx",
          "html",
          "css",
          "markdown",
          "markdown_inline",
          "lua",
          "vim",
          "gitignore",
          "python",
          "c",
          "php",
          "rust",
          "query",
        },
      })
    end,
  },
}
