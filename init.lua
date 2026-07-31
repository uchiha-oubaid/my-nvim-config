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

require("lazy").setup({
    spec = {import = "plugins"},
    { "gruber-darker/nvim", name = "gruber-darker" },
})

vim.cmd('colorscheme gruber-darker')

--vim.api.nvim_create_autocmd("FileType", {
--    pattern = "odin",
--    callback = function()
--        -- Remove ':' from both potential indent key settings
--        vim.opt_local.indentkeys:remove(":")
--        vim.opt_local.cinkeys:remove(":")
--        
--        -- If using indentexpr, also modify the expression
--        if vim.opt_local.indentexpr:get() ~= "" then
--            -- This disables the indent expression's : behavior
--            vim.opt_local.indentexpr = "v:lua.require'odin.indent'.get_indent()"
--            -- But only if you have the odin indent module
--        end
--    end,
--})
