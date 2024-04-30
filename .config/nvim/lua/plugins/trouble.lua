return {
  -- Better diagnostic list
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = { use_diagnostic_signs = true },
    keys = {
      { "<leader>td", "<cmd>TroubleToggle document_diagnostics<CR>", desc = "[d]ocument diagnostics" },
      { "<leader>tw", "<cmd>TroubleToggle workspace_diagnostics<CR>", desc = "[w]orkspace diagnostics" },
      { "<leader>tl", "<cmd>TroubleToggle loclist<CR>", desc = "[l]ocation list" },
      { "<leader>tq", "<cmd>TroubleToggle quickfix<CR>", desc = "[q]uickfix list" },
      {
        "[q",
        function()
          if require("trouble"). is_open() then
            require("trouble").previous({ skip_groups = true, jump = true })
          else
            local ok, err = pcall(vim.cmd.cprev)
            if not ok then
              vim.notify(err, vim.log.levels.ERROR)
            end
          end
        end,
        desc = "Previous trouble/quickfix item",
      },
      {
        "]q",
        function()
          if require("trouble"). is_open() then
            require("trouble").next({ skip_groups = true, jump = true })
          else
            local ok, err = pcall(vim.cmd.cprev)
            if not ok then
              vim.notify(err, vim.log.levels.ERROR)
            end
          end
        end,
        desc = "Next trouble/quickfix item",
      },
    },
  },
}

