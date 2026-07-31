vim.g.mapleader = " "

-- basic needs
vim.keymap.set("n", "<C-s>", ":w<CR>", {})
vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", ":bn<CR>", {})
vim.keymap.set("n", "<C-h>", ":bp<CR>", {})
vim.keymap.set("n", "<leader>ex", ":Ex<CR>", {})
vim.keymap.set("n", "<C-t>", ":term<CR>", {})
vim.keymap.set("n", "<leader>no", ":noh<CR>", {})
vim.keymap.set("n", "<leader>c", ":Compile<CR>", {})
vim.keymap.set("n", "<leader>rg", ":Rg ", {})
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set({"n", "v"}, "<C-g>", "<cmd>Neogit<CR>", {desc = "Open Neogit UI"})
vim.keymap.set("v", "Y", '"+y', {desc = "Copied to clipboard!"})
vim.keymap.set("v", "X", '"+x', {desc = "Copied to clipboard!"})
