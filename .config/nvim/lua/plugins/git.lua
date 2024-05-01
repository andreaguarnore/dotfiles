return {

  {
    "lewis6991/gitsigns.nvim",
    event = "BufEnter",
    opts = {
      signcolumn = false,
    },
    keys = {
      { "]h", "<Cmd>Gitsigns next_hunk<CR>", desc = "Next [h]unk" },
      { "[h", "<Cmd>Gitsigns prev_hunk<CR>", desc = "Previous [h]unk" },
      { mode = { "n", "v" }, "<Leader>hs", "<Cmd>Gitsigns stage_hunk<CR>", desc = "[s]tage hunk" },
      { mode = { "n", "v" }, "<Leader>hr", "<Cmd>Gitsigns reset_hunk<CR>", desc = "[r]eset hunk" },
      { "<Leader>hS", "<Cmd>Gitsigns stage_buffer<CR>", desc = "[S]tage buffer" },
      { "<Leader>hu", "<Cmd>Gitsigns undo_stage_hunk<CR>", desc = "[u]ndo stage hunk" },
      { "<Leader>hR", "<Cmd>Gitsigns reset_buffer<CR>", desc = "[R]eset buffer" },
      { "<Leader>hp", "<Cmd>Gitsigns preview_hunk<CR>", desc = "[p]review hunk" },
      { "<Leader>hb", "<Cmd>Gitsigns blame_line full=true<CR>", desc = "[b]lame line" },
      { "<Leader>hd", "<Cmd>Gitsigns diffthis<CR>", desc = "[d]iff this" },
      { "<Leader>hD", "<Cmd>Gitsigns diffthis ~<CR>", desc = "[D]iff this ~" },
      { "<Leader>ht", "<Cmd>Gitsigns toggle_numhl<CR>", desc = "[t]oggle gutter signs" },
    },
  },

  {
    "tpope/vim-fugitive",
    cmd = "Git",
  }

}

