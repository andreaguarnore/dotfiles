return {

  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      defaults = {
        mode = { "n", "v" },
        ["<Leader><Tab>"] = { name = "+tabs" },
        ["<Leader>c"] = { name = "+code" },
        ["<Leader>d"] = { name = "+diagnostics" },
        ["<Leader>f"] = { name = "+file/find" },
        ["<Leader>h"] = { name = "+hunks" },
        ["<Leader>o"] = { name = "+options" },
        ["<Leader>s"] = { name = "+search" },
        ["<Leader>t"] = { name = "+trouble" },
      },
    },
    init = function()
      vim.opt.timeout = true
      vim.opt.timeoutlen = 300
    end,
    config = function(_, opts)
      local wk = require("which-key")
      wk.setup(opts)
      wk.register(opts.defaults)
    end
  },

  {
    "lewis6991/satellite.nvim",
    event = "BufEnter",
    opts = {
      width = 2,
      handlers = {
        search = { enable = false },
      },
    },
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = "BufEnter",
    opts = {
      indent = {
        char = "▏",
      },
    },
  },

  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        icons_enabled = true,
        theme = "auto",
        component_separators = { left = "", right = "" },
        section_separators = { left = "█", right = "█" },
      },
      sections = {
        lualine_b = {
          "branch",
          "diff",
          "diagnostics",
        },
        lualine_x = {
          "filetype"
        },
      },
    },
  },

  {
    "szw/vim-maximizer",
    event = "VeryLazy",
    keys = {
      { "<Leader>m", "<Cmd>MaximizerToggle!<CR>", desc = "[m]aximize window" },
    },
  },

}

