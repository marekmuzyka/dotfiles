local map = vim.keymap.set

-- move between windows
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- clear highligths and command
map("n", "<Esc>", "<cmd>nohlsearch<CR><cmd>echo<CR>")

-- file explorer
map("n", "-", "<cmd>Ex<CR>")

-- copy and paste using the system clipboard
map({"n", "v"}, "<leader>y", '"+y')
map({"n", "v"}, "<leader>p", '"+p')
