return {
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        enabled = vim.fn.executable "make" == 1,
      },
    },
    keys = {
      { "<Leader>ff", "<Cmd>Telescope find_files<CR>", desc = "Find [f]iles" },
      { "<Leader>sg", "<Cmd>Telescope live_grep<CR>", desc = "Search by [g]rep" },
      { "<Leader>fg", "<Cmd>Telescope git_files<CR>", desc = "Find [g]it files" },
      { "<Leader>fb", "<Cmd>Telescope buffers<CR>", desc = "Find [b]uffers" },
    },
  },
}

