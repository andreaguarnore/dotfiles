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
    diagnostics = {
      underline = true,
      update_in_insert = true,
    },
  },
}

