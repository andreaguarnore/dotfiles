-- Set <space> as the leader key
vim.g.mapleader = " "

-- Set highlight on search
vim.o.hlsearch = false
vim.o.incsearch = true

-- Sync clipboard between OS and Neovim
vim.o.clipboard = "unnamedplus"

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrease update time
vim.o.updatetime = 300

-- NOTE: make sure your terminal supports this
vim.o.termguicolors = true

-- Block cursor
vim.o.guicursor = ""

-- Relative line numbers
vim.o.nu = true
vim.o.relativenumber = true

-- Indentation
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

-- Show whitespace
vim.o.list = true
vim.o.listchars = "trail:·,extends:›,precedes:‹"

-- Text wrap
vim.o.wrap = false

-- Ruler
vim.o.colorcolumn = "80"

