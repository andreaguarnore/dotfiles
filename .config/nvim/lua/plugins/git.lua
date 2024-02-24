return {

  -- git decorations and interaction with hunks
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      signs = {
        add = { text = "▎" },
        change = { text = "▎" },
        delete = { text = "▎" },
        topdelete = { text = "▎" },
        changedelete = { text = "▎" },
        untracked = { text = "▎" },
      },
      on_attach = function(buffer)
        local gs = package.loaded.gitsigns

        local function map(mode, l, r, desc)
          vim.keymap.set(mode, l, r, { buffer = buffer, desc = desc })
        end

        map("n", "]h", gs.next_hunk, "Next [h]unk")
        map("n", "[h", gs.prev_hunk, "Previous [h]unk")
        map({ "n", "v" }, "<leader>ghs", "<cmd>Gitsigns stage_hunk<CR>", "[s]tage hunk")
        map({ "n", "v" }, "<leader>ghr", "<cmd>Gitsigns reset_hunk<CR>", "[r]eset hunk")
        map("n", "<leader>ghS", gs.stage_buffer, "[S]tage buffer")
        map("n", "<leader>ghu", gs.undo_stage_hunk, "[u]ndo stage hunk")
        map("n", "<leader>ghR", gs.reset_buffer, "[R]eset buffer")
        map("n", "<leader>ghp", gs.preview_hunk_inline, "[p]review hunk")
        map("n", "<leader>ghb", function() gs.blame_line({ full = true }) end, "[b]lame line")
        map("n", "<leader>ghd", gs.diffthis, "[d]iff this")
        map("n", "<leader>ghD", function() gs.diffthis("~") end, "[D]iff this ~")
      end,
    },
  },

  -- fugitive
  -- rhubarb

}

