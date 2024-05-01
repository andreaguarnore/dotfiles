return {
  {
    "neovim/nvim-lspconfig",
    event = "BufReadPost",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      { "j-hui/fidget.nvim", opts = {} },
      { "folke/neodev.nvim", opts = {} },
    },
    opts = {
      diagnostics = {
        underline = true,
        update_in_insert = false,
      },
      inlay_hints = {
        enabled = false, -- Neovim >= 0.10.0
      },
    },
    keys = {
      { "gd", function() require("telescope.builtin").lsp_definitions() end, desc = "Goto [d]efinition" },
      { "gr", "<Cmd>Telescope lsp_references<cr>", desc = "Goto [r]eferences" },
      { "gD", vim.lsp.buf.declaration, desc = "Goto [D]eclaration" },
      { "gI", function() require("telescope.builtin").lsp_implementations() end, desc = "Goto [I]mplementation" },
      { "gy", function() require("telescope.builtin").lsp_type_definitions() end, desc = "Goto t[y]pe definition" },
      { "K", vim.lsp.buf.hover, desc = "Hover documentation" },
      { "<Leader>ca", vim.lsp.buf.code_action, desc = "Code [a]ction" },
      { "<Leader>cr", vim.lsp.buf.rename, desc = "[r]ename variable" },
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        handlers = {
          function (server_name)
            require("lspconfig")[server_name].setup({})
          end
        },
      })
    end,
  },
}

