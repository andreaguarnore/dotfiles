local set = vim.keymap.set

-- Avoid having the space key move the cursor
set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Remap for dealing with word wrap
set({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
set({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- Keep cursor centered when jumping pages or searching
set("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true})
set("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true})
set("n", "n", "nzz", { noremap = true, silent = true})
set("n", "N", "Nzz", { noremap = true, silent = true})

-- Paste without losing yanked buffer
set("x", "<Leader>p", "\"_dP", { desc = "[p]aste and keep yank" })

-- Move lines
set("n", "<M-down>", "<Cmd>m .+1<CR>==")
set("n", "<M-up>", "<Cmd>m .-2<CR>==")

-- Better indenting
set("v", "<", "<gv")
set("v", ">", ">gv")

-- Diagnostics keymaps
set("n", "<Leader>de", vim.diagnostic.open_float, { desc = "Show diagnostic [e]rror messages" })
set("n", "<Leader>dq", vim.diagnostic.setloclist, { desc = "Open diagnostic [q]uickfix list" })

-- Move between splits
set("n", "<C-left>", "<Cmd>wincmd h<CR>")
set("n", "<C-down>", "<Cmd>wincmd j<CR>")
set("n", "<C-up>", "<Cmd>wincmd k<CR>")
set("n", "<C-right>", "<Cmd>wincmd l<CR>")

-- Resize splits
set("n", "<M-n>", "<C-w>5<")
set("n", "<M-e>", "<C-w>-")
set("n", "<M-i>", "<C-w>+")
set("n", "<M-o>", "<C-w>5>")

-- Splits management
set("n", "<Leader>sm", "<Cmd>wincmd _<CR>", { desc = "[m]aximize split" })
set("n", "<Leader>sb", "<Cmd>wincmd =<CR>", { desc = "[b]alance splits" })

-- Open a terminal in a split at the bottom of the screen
set("n", "<Leader>st", function()
  vim.cmd.new()
  vim.cmd.wincmd "J"
  vim.api.nvim_win_set_height(0, 12)
  vim.wo.winfixheight = true
  vim.cmd.term()
  vim.cmd.startinsert()
end, { desc = "Open a terminal in a [s]plit" })

-- Exit terminal mode easily
set("t", "<Esc><Esc>", "<C-\\><C-n>")

-- Quick toggles
set("n", "<Leader>tw", "<Cmd>set wrap!<CR>", { desc = "Toggle word [w]rap" })
set("n", "<Leader>th", "<Cmd>set hlsearch!<CR>", { desc = "Toggle search [h]ighlighting" })
set("n", "<Leader>tH", function() vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled()) end, { desc = "Toggle inlay [H]ints" })

-- Write
set("n", "<Leader>w", "<Cmd>w<CR>", { desc = "[w]rite buffer to file" })
set("n", "<Leader>W", "<Cmd>wall<CR>", { desc = "[W]rite all buffers to file" })

-- Quit
set("n", "<Leader>q", "<Cmd>q<CR>", { desc = "[q]uit" })


