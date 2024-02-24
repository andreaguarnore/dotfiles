-- Avoid having the space key move the cursor
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- Keep cursor centered while jump pages
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Same while searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste without losing yanked buffer
vim.keymap.set("x", "<leader>p", "\"_dP", { desc = "[p]aste and keep yank" })

-- Yank to OS clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", "\"+y", { desc = "[y]ank to OS clipboard" })
vim.keymap.set("v", "<leader>y", "\"+Y", { desc = "[y]ank to OS clipboard" })

-- Move lines
vim.keymap.set("n", "<A-j>", "<cmd>m .+1<CR>==")
vim.keymap.set("n", "<A-k>", "<cmd>m .-2<CR>==")
vim.keymap.set("i", "<A-j>", "<Esc><cmd>m .+1<CR>==gi")
vim.keymap.set("i", "<A-k>", "<Esc><cmd>m .-2<CR>==gi")
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")

-- Better indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Easier way to exit insert mode
vim.keymap.set("i", "jk", "<Esc>")

-- Easier way to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>")

-- Netrw
vim.keymap.set("n", '<leader>ee', vim.cmd.Ex, { desc = "Netrw" })

-- Diagnostics keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [d]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [d]iagnostic message" })
vim.keymap.set("n", "<leader>de", vim.diagnostic.open_float, { desc = "Show diagnostic [e]rror messages" })
vim.keymap.set("n", "<leader>dq", vim.diagnostic.setloclist, { desc = "Open diagnostic [q]uickfix list" })

-- Move between windows
vim.keymap.set("n", "<C-h>", "<cmd>wincmd h<CR>")
vim.keymap.set("n", "<C-j>", "<cmd>wincmd j<CR>")
vim.keymap.set("n", "<C-k>", "<cmd>wincmd k<CR>")
vim.keymap.set("n", "<C-l>", "<cmd>wincmd l<CR>")

-- Save file
vim.keymap.set("n", "<C-s>", "<cmd>w<CR>")

-- Quit
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>", { desc = "[q]uit" })

