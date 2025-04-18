local options = {
    formatters_by_ft = {
        lua = { "stylua" },
        -- css = { "eslint_d", "prettier" },
        -- scss = { "eslint_d", "prettier" },
        -- html = { "eslint_d", "prettier" },
        -- javascript = { "eslint_d", "prettier" },
        -- typescript = { "eslint_d", "prettier" },
        -- typescriptreact = { "eslint_d", "prettier" },
        -- javascriptreact = { "eslint_d", "prettier" },

        -- css = { "eslint_d" },
        -- scss = { "eslint_d" },
        -- html = { "eslint_d" },
        -- javascript = { "eslint_d" },
        -- typescript = { "eslint_d" },
        -- typescriptreact = { "eslint_d" },
        -- javascriptreact = { "eslint_d" },

        -- css = { "prettier" },
        -- scss = { "prettier" },
        -- html = { "prettier" },
        -- javascript = { "prettier" },
        -- typescript = { "prettier" },
        -- typescriptreact = { "prettier" },
        -- javascriptreact = { "prettier" },

        -- vue = { "eslint_d" },
        -- json = { "eslint_d" },
        -- tsx = { "eslint_d" },
        c_cpp = { "clang-format" }, -- Hack
        c = { "clang_format" },
        cpp = { "clang_format" },
        -- yaml = { "eslint_d" },
        -- md = { "eslint_d" },
        -- python = {}
    },

    formatters = {
        clang_format = {
            prepend_args = {
                "--style=" .. vim.json.encode {
                    IndentWidth = 4,
                    TabWidth = 4,
                    AccessModifierOffset = 0,
                    IndentAccessModifiers = true,
                    PackConstructorInitializers = "Never",
                    BreakBeforeBraces = "Custom",
                    BraceWrapping = {
                        AfterClass = true,
                        AfterEnum = true,
                        AfterUnion = true,
                        AfterStruct = false,
                        AfterObjCDeclaration = true,
                        AfterFunction = true,
                        AfterControlStatement = true,
                        AfterNamespace = true,
                        AfterExternBlock = true,
                        BeforeCatch = true,
                        BeforeElse = true,
                    },
                },
            },
        },
    },

    format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
        lsp_fallback = true,
    },
}

require("conform").setup(options)
