return {

  -- Popup showing pending keybinds
  {
    "folke/which-key.nvim",
    opts = {
      defaults = {
        mode = { "n", "v" },
        ["<leader>c"] = { name = "+code" },
        ["<leader>d"] = { name = "+diagnostics" },
        ["<leader>f"] = { name = "+file/find" },
        ["<leader>g"] = { name = "+git" },
        ["<leader>gh"] = { name = "+hunks" },
        ["<leader>o"] = { name = "+options" },
        ["<leader>s"] = { name = "+search" },
        ["<leader>t"] = { name = "+trouble" },
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

  -- Indentation guides
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
      indent = {
        char = "▏",
      },
    },
  },

  -- statusline
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        icons_enabled = true,
        theme = "auto",
        component_separators = "|",
        section_separators = "",
      },
    },
  },

  -- Maximize and restore the current window
  {
    "szw/vim-maximizer",
    opts = {},
    keys = {
      { "<leader>m", "<cmd>MaximizerToggle!<CR>", desc = "[m]aximize window" },
    },
    config = function() end,
  },

}

