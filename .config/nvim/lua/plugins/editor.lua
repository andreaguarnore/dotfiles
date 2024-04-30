return {

  -- Highlights and searches for todo comments
  {
    "folke/todo-comments.nvim",
    opts = { signs = false },
    keys = {
      { "[t", function() require("todo-comments").jump_prev() end, desc = "Previous [t]odo comment" },
      { "]t", function() require("todo-comments").jump_next() end, desc = "Next [t]odo comment" },
      { "<leader>tt", "<cmd>TodoTrouble<CR>", desc = "List all project [t]odos" },
      { "<leader>ft", "<cmd>TodoTelescope<CR>", desc = "Find all [t]odos" },
    },
  },

  -- Visualization of the undo history
  {
    "mbbill/undotree",
    opts = {},
    keys = {
      { "<leader>u", "<cmd>UndotreeToggle<CR>", desc = "[u]ndo tree" },
    },
    config = function() vim.g["undotree_WindowLayout"] = 2 end,
  },

  -- Comment regions/lines with `gc` and `gcc`
  { "numToStr/Comment.nvim", opts = {} },

  -- Search panel
  {
    "nvim-pack/nvim-spectre",
    opts = {},
    keys = {
      { "<leader>sw", "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", desc = "Search current [w]ord" },
      { mode = "v", "<leader>sw", "<esc><cmd>lua require('spectre').open_visual()<CR>", desc = "Search current [w]ord" },
      { "<leader>sf", "<cmd>lua require('spectre').open_file_search({select_word=true})<CR>", desc = "Search on current [f]ile" },
    },
  },

}

