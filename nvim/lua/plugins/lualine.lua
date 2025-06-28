return {
  'nvim-lualine/lualine.nvim',
  config = function()
    local lualine = require("lualine")

    -- configure lualine with modified theme
    lualine.setup({
      options = {
        theme = "auto",
        icons_enabled = false,
        section_separators = '',
        component_separators = '',
      },
      sections = {
        lualine_a = {
          {
            "mode",
          },
        },
        lualine_b = {
          "filename",
          "branch",
          "diff",
        },
        lualine_c = {},
        lualine_x = {},
        lualine_y = { "filetype", "progress" },
        lualine_z = {
          {
            "location",
          },
        },
      },
    })
  end,
}
