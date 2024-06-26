-- Avoid having the space key move the cursor
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- Keep cursor centered when jumping pages
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Same while searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste without losing yanked buffer
vim.keymap.set("x", "<Leader>p", "\"_dP", { desc = "[p]aste and keep yank" })

-- Yank to OS clipboard
vim.keymap.set({ "n", "v" }, "<Leader>y", "\"+y", { desc = "[y]ank to OS clipboard" })
vim.keymap.set("n", "<Leader>Y", "\"+Y", { desc = "[y]ank line to OS clipboard" })

-- Move lines
vim.keymap.set("n", "<A-j>", "<Cmd>m .+1<CR>==")
vim.keymap.set("n", "<A-k>", "<Cmd>m .-2<CR>==")
vim.keymap.set("i", "<A-j>", "<Esc><Cmd>m .+1<CR>==gi")
vim.keymap.set("i", "<A-k>", "<Esc><Cmd>m .-2<CR>==gi")
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")

-- Better indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Easier way to exit insert mode
vim.keymap.set("i", "jk", "<Esc>")

-- Easier way to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>")

-- Diagnostics keymaps
vim.keymap.set("n", "<Leader>de", vim.diagnostic.open_float, { desc = "Show diagnostic [e]rror messages" })
vim.keymap.set("n", "<Leader>dq", vim.diagnostic.setloclist, { desc = "Open diagnostic [q]uickfix list" })

-- Move between windows
vim.keymap.set("n", "<C-h>", "<Cmd>wincmd h<CR>")
vim.keymap.set("n", "<C-j>", "<Cmd>wincmd j<CR>")
vim.keymap.set("n", "<C-k>", "<Cmd>wincmd k<CR>")
vim.keymap.set("n", "<C-l>", "<Cmd>wincmd l<CR>")

-- Move between tabs
vim.keymap.set("n", "<Leader><Tab><Tab>", "<Cmd>tabnew<CR>", { desc = "New tab" })
vim.keymap.set("n", "<Leader><Tab>q", "<Cmd>tabclose<CR>", { desc = "[q]uit tab" })
vim.keymap.set("n", "[t", "<Cmd>tabprevious<CR>", { desc = "Previous [t]ab" })
vim.keymap.set("n", "]t", "<Cmd>tabnext<CR>", { desc = "Next [t]ab" })

-- Quick toggles
vim.keymap.set("n", "<Leader>ow", "<Cmd>set wrap!<CR>", { desc = "Toggle word [w]rap" })
vim.keymap.set("n", "<Leader>oh", function() vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled()) end, { desc = "Toggle inlay [h]ints" })

-- Save file
vim.keymap.set("n", "<C-s>", "<Cmd>w<CR>")

-- Quit
vim.keymap.set("n", "<Leader>q", "<Cmd>q<CR>", { desc = "[q]uit" })

