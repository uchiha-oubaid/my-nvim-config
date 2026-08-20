require("config.keymaps")
require("config.options")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out, "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

vim.api.nvim_create_autocmd("BufEnter", {
    pattern = "*",
    callback = function()
        if vim.fn.line("$") > 100000 then
            vim.wo.number = false
            vim.wo.relativenumber = false
        end
    end
})

require("lazy").setup({
    spec = {import = "plugins"},
    { "gruber-darker/nvim", name = "gruber-darker" },
})

vim.cmd('colorscheme gruber-darker')
