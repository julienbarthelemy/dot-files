return {
  "cdmill/neomodern.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("neomodern").setup({
      --opt config here
      theme = "roseprime",
    })
    require("neomodern").load()
  end,
}
