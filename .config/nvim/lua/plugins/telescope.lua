return {
  -- Fuzzy finder
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        enabled = vim.fn.executable "make" == 1,
      },
    },
    keys = {
      { "<leader>ff", "<cmd>Telescope find_files<CR>", mode = "n", desc = "Find [f]iles" },
      { "<leader>sg", "<cmd>Telescope live_grep<CR>", mode = "n", desc = "Search by [g]rep" },
      { "<leader>fg", "<cmd>Telescope git_files<CR>", mode = "n", desc = "Find [g]it files" },
    },
  },
}
