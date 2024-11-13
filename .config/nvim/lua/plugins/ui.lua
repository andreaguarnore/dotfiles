return {

  {
    "j-hui/fidget.nvim",
    opts = {},
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = "BufEnter",
    opts = {},
  },

  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        icons_enabled = false,
        section_separators = "",
        component_separators = "",
      },
      sections = {
        lualine_c = {
          {
            "filename",
            path = 1, -- relative path
            shorting_target = 1,
          },
        },
        lualine_x = {},
      },
    },
  },

}

