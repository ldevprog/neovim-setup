local options = {
    formatters_by_ft = {
        lua = { "stylua" },
        css = { "prettier" },
        scss = { "prettier" },
        html = { "prettier" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        typescriptreact = { "prettier" },
        javascriptreact = { "prettier" },
        vue = { "prettier" },
        json = { "prettier" },
        tsx = { "prettier" },
        c_cpp = { "clang-format" }, -- Hack
        c = { "clang_format" },
        cpp = { "clang_format" },
        yaml = { "prettier" },
        md = { "prettier" },
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
