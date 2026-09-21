return {
    {
        "ej-shafran/compile-mode.nvim",
        version = "^5.0.0",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "m00qek/baleia.nvim", tag = "v1.3.0",
        },
        config = function()
            vim.g.compile_mode = {
                default_command = "",
                baleia_setup = true,
                bang_expansion = false,
                directory_change_matchers = {},
                error_regexp_table = {},
                error_ignore_file_list = {},
                error_threshold = require("compile-mode").level.WARNING,
                auto_jump_to_first_error = false,
                error_locus_highlight = 500,
                use_diagnostics = false,
                recompile_no_fail = false,
                ask_about_save = false,
                ask_to_interrupt = true,
                buffer_name = "*compilation*",
                time_format = "%a %b %e %H:%M:%S",
                hidden_output = {},
                environment = nil,
                clear_environment = false,
                input_word_completion = true,
                hidden_buffer = false,
                focus_compilation_buffer = true,
                auto_scroll = false,
                use_circular_error_navigation = true,
                debug = false,
                use_pseudo_terminal = false,
                error_regexp_table = {
                    odin = {
                        regex = [[\v^(.{-})\((\d+):(\d+)\) (Error|Warning): (.*)$]],
                        filename = 1,
                        row = 2,
                        col = 3,
                        type = 4,
                        text = 5,
                    },
                },
            }end
        }
    }
