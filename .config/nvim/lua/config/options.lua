-- Set <Space> as the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Disable highlight on search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Decrease update time
vim.opt.updatetime = 300
vim.opt.timeoutlen = 300

-- Enable true color support in the terminal
vim.opt.termguicolors = true

-- Use block cursor
vim.opt.guicursor = ""

-- Always use sign column
vim.opt.signcolumn = "yes:1"

-- Relative line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Configure how new splits are opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Show whitespace
vim.opt.list = true
vim.opt.listchars = "tab:» ,nbsp:␣,trail:·,extends:›,precedes:‹"

-- Text wrap
vim.opt.wrap = false

-- Ruler
vim.opt.colorcolumn = "80"

-- Minimum number of screen lines to keep above and below the cursor
vim.opt.scrolloff = 8

-- Enable mouse mode for resizing splits
vim.opt.mouse = "a"

