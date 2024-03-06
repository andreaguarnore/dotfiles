return {

  -- Highlights and searches for todo comments
  {
    "folke/todo-comments.nvim",
    opts = { signs = false },
    keys = {
      { "[t", function() require("todo-comments").jump_prev() end, desc = "Previous [t]odo comment" },
      { "]t", function() require("todo-comments").jump_next() end, desc = "Next [t]odo comment" },
      { "<leader>tt", "<cmd>TodoTrouble<CR>", desc = "List all project [t]odos" },
      { "<leader>ft", "<cmd>TodoTelescope<CR>", desc = "Find all [t]odos" },
    },
  },

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

  -- Popup showing pending keybinds
  {
    "folke/which-key.nvim",
    opts = {
      defaults = {
        mode = { "n", "v" },
        ["<leader>d"] = { name = "+diagnostics" },
        ["<leader>f"] = { name = "+file/find" },
        ["<leader>g"] = { name = "+git" },
        ["<leader>gh"] = { name = "+hunks" },
        ["<leader>o"] = { name = "+options" },
        ["<leader>s"] = { name = "+search" },
        ["<leader>t"] = { name = "+trouble" },
      },
    },
    init = function()
      vim.opt.timeout = true
      vim.opt.timeoutlen = 300
    end,
    config = function(_, opts)
      local wk = require("which-key")
      wk.setup(opts)
      wk.register(opts.defaults)
    end
  },

  -- Colorscheme
  {
    "kepano/flexoki-neovim",
    config = function()
      vim.cmd.colorscheme "flexoki-dark"
    end,
  },

  -- Indentation guides
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
      indent = {
        char = "▏",
      },
    },
  },

  -- Visualization of the undo history
  {
    "mbbill/undotree",
    opts = {},
    keys = {
      { "<leader>u", "<cmd>UndotreeToggle<CR>", desc = "[u]ndo tree" },
    },
    config = function() vim.g["undotree_WindowLayout"] = 2 end,
  },

  -- Comment regions/lines with `gc` and `gcc`
  { "numToStr/Comment.nvim", opts = {} },

  -- Library used by other plugins
  { "nvim-lua/plenary.nvim", lazy = true },

  -- statusline
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        icons_enabled = true,
        theme = "auto",
        component_separators = "|",
        section_separators = "",
      },
    },
  },

  -- Search panel
  {
    "nvim-pack/nvim-spectre",
    opts = {},
    keys = {
      { "<leader>sw", "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", desc = "Search current [w]ord" },
      { mode = "v", "<leader>sw", "<esc><cmd>lua require('spectre').open_visual()<CR>", desc = "Search current [w]ord" },
      { "<leader>sf", "<cmd>lua require('spectre').open_file_search({select_word=true})<CR>", desc = "Search on current [f]ile" },
    },
  },

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

  {
    "szw/vim-maximizer",
    opts = {},
    keys = {
      { "<leader>m", "<cmd>MaximizerToggle!<CR>", desc = "[m]aximize window" },
    },
    config = function() end,
  },

}

