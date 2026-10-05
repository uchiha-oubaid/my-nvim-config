vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set fileencoding=utf-8")
vim.cmd("set nowrap")
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.scrolloff = 8
vim.opt.updatetime = 50
vim.opt.guicursor = "a:block"
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.guifont = "Input Mono:h18"

if vim.g.neovide then
    vim.keymap.set("v", "<D-c>", '"+y', { desc = "Copy to clipboard" })
    vim.keymap.set({"n", "i"}, "<D-v>", '"+P', { desc = "Paste from clipboard" })
    vim.keymap.set("i", "<D-v>", '<ESC>l"+Pli', { desc = "Paste in insert mode" })
    vim.keymap.set("c", "<D-v>", '<C-R>+', { desc = "Paste in command mode" })

    vim.keymap.set({ "n", "v" }, "<C-=>", function()
        vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1
    end)
    vim.keymap.set({ "n", "v" }, "<C-->", function()
        vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1
    end)
    vim.keymap.set({ "n", "v" }, "<C-0>", function()
        vim.g.neovide_scale_factor = 1.0 -- Reset to default
    end)
end
