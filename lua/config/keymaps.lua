vim.g.mapleader = " "

-- basic needs
vim.keymap.set("n", "<C-s>", ":w<CR>", {})
vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>bn", ":bn<CR>", {})
vim.keymap.set("n", "<leader>ex", ":Ex<CR>", {})
vim.keymap.set("n", "<C-t>", ":term<CR>", {})
vim.keymap.set("n", "<leader>no", ":noh<CR>", {})
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
