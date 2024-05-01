return {
  {
    "folke/trouble.nvim",
    cmd = { "TroubleToggle", "Trouble" },
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = { use_diagnostic_signs = true },
    keys = {
      { "<Leader>td", "<Cmd>TroubleToggle document_diagnostics<CR>", desc = "[d]ocument diagnostics" },
      { "<Leader>tw", "<Cmd>TroubleToggle workspace_diagnostics<CR>", desc = "[w]orkspace diagnostics" },
      { "<Leader>tl", "<Cmd>TroubleToggle loclist<CR>", desc = "[l]ocation list" },
      { "<Leader>tq", "<Cmd>TroubleToggle quickfix<CR>", desc = "[q]uickfix list" },
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
        desc = "Previous trouble/[q]uickfix item",
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
        desc = "Next trouble/[q]uickfix item",
      },
    },
  },
}

