return {

  {
    "folke/todo-comments.nvim",
    cmd = { "TodoTrouble", "TodoTelescope" },
    opts = {
      signs = false
    },
    keys = {
      { "[T", function() require("todo-comments").jump_prev() end, desc = "Previous [T]odo comment" },
      { "]T", function() require("todo-comments").jump_next() end, desc = "Next [T]odo comment" },
      { "<Leader>tt", "<Cmd>TodoTrouble<CR>", desc = "List all project [t]odos" },
      { "<Leader>ft", "<Cmd>TodoTelescope<CR>", desc = "Find all [t]odos" },
    },
  },

  {
    "mbbill/undotree",
    cmd = "UndotreeToggle",
    opts = {},
    keys = {
      { "<Leader>u", "<Cmd>UndotreeToggle<CR>", desc = "[u]ndo tree" },
    },
    config = function() vim.g["undotree_WindowLayout"] = 2 end,
  },

  {
    "numToStr/Comment.nvim",
    event = "BufEnter",
    opts = {},
  },

  {
    "nvim-pack/nvim-spectre",
    cmd = "Spectre",
    opts = {},
    keys = {
      { "<Leader>sw", "<Cmd>Spectre open_visual select_word=true<CR>", desc = "Search current [w]ord" },
      { mode = "v", "<Leader>sw", "<Esc><Cmd>Spectre open_visual<CR>", desc = "Search current [w]ord" },
      { "<Leader>sf", "<Cmd>Spectre open_file_search select_word=true<CR>", desc = "Search on current [f]ile" },
    },
  },

}

