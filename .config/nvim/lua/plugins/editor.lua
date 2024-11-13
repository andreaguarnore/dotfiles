return {

  {
    "folke/todo-comments.nvim",
    cmd = { "TodoTrouble", "TodoTelescope" },
    opts = {},
    keys = {
      { "[T", function() require("todo-comments").jump_prev() end, desc = "Previous [T]odo comment" },
      { "]T", function() require("todo-comments").jump_next() end, desc = "Next [T]odo comment" },
      { "<Leader>tt", "<Cmd>TodoTrouble<CR>", desc = "List all project [t]odos" },
      { "<Leader>ft", "<Cmd>TodoTelescope<CR>", desc = "Find all [t]odos" },
    },
  },

  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
    cmd = { "Trouble", "TroubleToggle" },
    keys = {
    },
  },

  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("oil").setup({
        view_options = {
          show_hidden = true,
        },
      })
      vim.keymap.set("n", "-", "<cmd>Oil<CR>", { desc = "Open parent directory" })
    end,
  },

}

