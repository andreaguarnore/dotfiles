return {
  -- File explorer
  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("oil").setup({
        keymaps = {
          ["?"] = "actions.show_help",
          ["<CR>"] = "actions.select",
          ["<C-h>"] = "actions.select_split",
          ["<C-s>"] = "actions.select_vsplit",
          ["<C-p>"] = "actions.preview",
          ["<C-c>"] = "actions.close",
          ["-"] = "actions.parent",
          ["_"] = "actions.open_cwd",
          ["g."] = "actions.toggle_hidden",
        },
      })
      vim.keymap.set("n", "-", "<cmd>Oil<CR>")
    end,
  },
}

