return {

  -- Better diagnostic list
  -- {
  --   "folke/trouble.nvim"
  -- }

  -- Popup showing pending keybinds
  {
    "folke/which-key.nvim",
    opts = {},
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
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
  {
    "numToStr/Comment.nvim",
    opts = {},
    keys = {
      { "gcc", mode = "n", "Toggle comment current line" },
      { "gc", mode = { "n", "o" }, "Toggle comment linewise" },
      { "gc", mode = "x", "Toggle comment linewise (visual)" },
      { "gbc", mode = "n", "Toggle comment current block" },
      { "gb", mode = { "n", "o" }, "Toggle comment blockwise" },
      { "gb", mode = "x", "Toggle comment blockwise (visual)" },
    },
  },

  -- Library used by other plugins
  { "nvim-lua/plenary.nvim", lazy = true },

  -- statusline
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        icons_enabled = false,
        theme = "auto",
        component_separators = "|",
        section_separators = "",
      },
    },
  },

}

