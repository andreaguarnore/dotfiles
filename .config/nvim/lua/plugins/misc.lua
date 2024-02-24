return {

  -- Better diagnostic list
  -- {
  --   "folke/trouble.nvim"
  -- }

  -- Popup showing pending keybinds
  {
    "folke/which-key.nvim",
    opts = {
      defaults = {
        mode = { "n", "v" },
        ["<leader>d"] = { name = "+diagnostics" },
        ["<leader>f"] = { name = "+file/find" },
        ["<leader>g"] = { name = "+git" },
        ["<leader>gh"] = { name = "+hunks" },
        ["<leader>o"] = { name = "+options" },
        ["<leader>s"] = { name = "+search" },
      },
    },
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    config = function(_, opts)
      local wk = require("which-key")
      wk.setup(opts)
      wk.register(opts.defaults)
    end
  },

  -- Colorscheme
  {
    "kepano/flexoki-neovim",
    config = function()
      vim.cmd.colorscheme "flexoki-dark"
    end,
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

  -- Comment regions/lines with `gc` and `gcc`
  { "numToStr/Comment.nvim", opts = {} },

  -- Library used by other plugins
  { "nvim-lua/plenary.nvim", lazy = true },

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

  -- Search panel
  {
    "nvim-pack/nvim-spectre",
    opts = {},
    keys = {
      { mode = "n", "<leader>ss", "<cmd>lua require('spectre').toggle()<CR>", desc = "Toggle [s]pectre" },
      { mode = "n", "<leader>sw", "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", desc = "Search current [w]ord" },
      { mode = "v", "<leader>sw", "<esc><cmd>lua require('spectre').open_visual()<CR>", desc = "Search current [w]ord" },
      { mode = "n", "<leader>sf", "<cmd>lua require('spectre').open_file_search({select_word=true})<CR>", desc = "Search on current [f]ile" },
    },
  },

}

