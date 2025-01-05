return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local neogit = require("neogit")
    vim.keymap.set("n", "<leader>ng", neogit.open, {silent = true, noremap = true})
  end,
}
