vim.g.base46_cache = vim.fn.stdpath "data" .. "/nvchad/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    local repo = "https://github.com/folke/lazy.nvim.git"
    vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.g.translate_source = "ru"
vim.g.translate_target = "en"
vim.g.NERDTreeShowHidden = 1

vim.opt.rtp:prepend(lazypath)

vim.opt.number = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

vim.opt.relativenumber = true

vim.opt.cursorline = true

vim.api.nvim_set_keymap("n", "<C-w>+", ":resize +10<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-w>-", ":resize -10<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-w>>", ":vertical resize +20<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-w><", ":vertical resize -20<CR>", { noremap = true, silent = true })

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
    {
        "NvChad/NvChad",
        lazy = false,
        branch = "v2.5",
        import = "nvchad.plugins",
        config = function()
            require "options"
        end,
    },

    { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "nvchad.autocmds"

vim.schedule(function()
    require "mappings"
end)
