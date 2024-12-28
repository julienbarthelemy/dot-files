return {
  'nvim-lualine/lualine.nvim',
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status") -- to configure lazy pending updates count

    -- configure lualine with modified theme
    lualine.setup({
      options = {
        theme = "auto",
        icons_enabled = false,
        section_separators = '', 
        component_separators = '',
      },
      sections = {
        lualine_x = {
          { "encoding" },
          { "fileformat" },
        },
      },
    })
  end,
}
