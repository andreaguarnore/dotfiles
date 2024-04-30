return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- Package manager for LSP servers, DAS servers, linters, and formatters
      { "williamboman/mason.nvim", opts = {} },
      {
        "williamboman/mason-lspconfig.nvim",
        opts = {
          ensure_installed = {
            "lua_ls",
          },
          automatic_installation = false,
          handlers = {
            function(server_name)
              require("lspconfig")[server_name].setup({})
            end,
          },
        }
      },

      -- Status updates for LSP
      { "j-hui/fidget.nvim", opts = {} },

      -- Additional Lua configuration
      { "folke/neodev.nvim", opts = {} },
    },
    opts = {
      diagnostics = {
        underline = true,
        update_in_insert = false,
      },
      inlay_hints = {
        enabled = false,
      },
    },
    keys = {
      { "gd", function() require("telescope.builtin").lsp_definitions() end, desc = "Goto [d]efinition" },
      { "gr", "<Cmd>Telescope lsp_references<cr>", desc = "Goto [r]eferences" },
      { "gD", vim.lsp.buf.declaration, desc = "Goto [D]eclaration" },
      { "gI", function() require("telescope.builtin").lsp_implementations() end, desc = "Goto [I]mplementation" },
      { "gy", function() require("telescope.builtin").lsp_type_definitions() end, desc = "Goto t[y]pe definition" },
      { "K", vim.lsp.buf.hover, desc = "Hover documentation" },
      { "<leader>ca", vim.lsp.buf.code_action, desc = "Code [a]ction" },
      { "<leader>cr", vim.lsp.buf.rename, desc = "[r]ename variable" },
    },
  },
}

