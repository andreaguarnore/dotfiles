return {

  -- git decorations and interaction with hunks
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      sign = {
        add = { text = "+" },
        change = { text = "~" },
        delete = { text = "_" },
        topdelete = { text = "‾" },
        changedelete = { text = "~" },
      },
      on_attach = function(buffer)
        local gs = package.loaded.gitsigns

        local function map(mode, l, r, desc)
          vim.keymap.set(mode, l, r, { buffer = buffer, desc = desc })
        end

        map("n", "]h", gs.next_hunk, "Next hunk")
        map("n", "[h", gs.prev_hunk, "Previous hunk")
        map({ "n", "v" }, "<leader>hs", "<cmd> Gitsigns stage_hunk <CR>", "Stage hunk")
        map({ "n", "v" }, "<leader>hr", "<cmd> Gitsigns reset_hunk <CR>", "Reset hunk")
        map("n", "<leader>hS", gs.stage_buffer, "Stage buffer")
        map("n", "<leader>hu", gs.undo_stage_hunk, "Undo stage hunk")
        map("n", "<leader>hR", gs.reset_buffer, "Reset buffer")
        map("n", "<leader>hp", gs.preview_hunk, "Preview hunk")
        map("n", "<leader>hd", gs.diffthis, "Diff")
        map("n", "<leader>hD", function() gs.diffthis("~") end, "Diff ~")
      end,
    },
  },

  -- fugitive
  -- rhubarb

}

