return{
    "lukas-reineke/indent-blankline.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
        char = "│",
        buftype_exclude = { "terminal", "nofile" },
        filetype_exclude = { "help", "dashboard", "packer" },
        show_trailing_blankline_indent = false,
        show_first_indent_level = false,
        use_treesitter = false,          -- DISABLE treesitter
        show_current_context = true,     -- best-effort with indent method
        show_current_context_start = true,
        space_char_blankline = " ",
        -- You can tune context patterns (fall back to indent-based detection)
        context_patterns = { "class", "function", "if", "while", "for", "switch", "case" },
    },

    -- Optional: small plugin to show indent guides for blank lines (works without treesitter)
    {
        "lukas-reineke/virtcolumn.nvim",
        enabled = false, -- optional; enable if you prefer virtual columns
    }
}
