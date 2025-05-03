-- Change leader to a space
vim.g.mapleader = " "

-- Exit buffer
vim.keymap.set("n", "<leader>pv", ":Ex<CR>")

-- Disable arrow keys
vim.keymap.set("", "<up>", "<nop>")
vim.keymap.set("", "<down>", "<nop>")
vim.keymap.set("", "<left>", "<nop>")
vim.keymap.set("", "<right>", "<nop>")

-- Map Esc to kk
vim.keymap.set("i", "jk", "<esc>")
vim.keymap.set("i", "kj", "<Esc>")

-- Move around splits using Ctrl + {h,j,k,l}
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Reload configuration without restart nvim
vim.keymap.set("n", "<leader>r", ":so %<CR>")

-- Fast saving with <leader> and s
vim.keymap.set("n", "<leader>s", ":w<CR>")

-- Moving selected lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep cursor in the middle while searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- This is how p should work
vim.keymap.set("x", "<leader>p", "\"_dp")

-- Copy to clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- And this is how d should work
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- Just read what it does
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
