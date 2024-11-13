local opt = vim.opt

-- Save undo history
opt.undofile = true

-- Use system clipboard
opt.clipboard = "unnamedplus"

-- Case-insensitive searching UNLESS \C or capital in search
opt.ignorecase = true
opt.smartcase = true

-- Decrease update time
opt.updatetime = 200
opt.timeoutlen = 500

-- Enable true color support in the terminal
opt.termguicolors = true

-- Use block cursor
opt.guicursor = ""

-- Always show sign column
opt.signcolumn = "yes"

-- Make cursor line number bold
opt.cursorline = true
opt.cursorlineopt = "number"

-- Relative line numbers
opt.number = true
opt.relativenumber = true

-- Indentation
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

-- Configure how new splits are opened
opt.splitright = true
opt.splitbelow = true

-- Show whitespace
opt.list = true
opt.listchars = {
  tab = "» ",
  nbsp = "␣",
  trail = "·",
  extends = "›",
  precedes = "‹",
}

-- Ruler
opt.colorcolumn = "80"

-- Minimum number of screen lines to keep above and below the cursor
opt.scrolloff = 1

-- Enable mouse mode for resizing splits
opt.mouse = "a"

