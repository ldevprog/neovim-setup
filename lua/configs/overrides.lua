local M = {}

M.treesitter = {
    ensure_installed = {
        "vim",
        "lua",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "c",
        "cpp",
        "cmake",
        "make",
        "markdown",
        "markdown_inline",
        "prisma",
        "go",
        "sql",
        "vuels",
    },
    indent = {
        enable = true,
    },
}

M.mason = {
    ensure_installed = {
        "lua-language-server",
        "css-lsp",
        "html-lsp",
        "typescript-language-server",
        "deno",
        "prettier",
        "eslint_d",
        "clangd",
        "clang-format",
        "node-debug2-adapter",
        "gopls",
        "sqls",
        "sql-formatter",
        "gradle_ls",
        "vuels",
    },
}

-- git support in nvimtree
M.nvimtree = {
    git = {
        enable = true,
    },

    renderer = {
        highlight_git = true,
        icons = {
            show = {
                git = true,
            },
        },
    },
}

return M
