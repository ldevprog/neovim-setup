-- EXAMPLE
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "luals", "html", "cssls", "tsserver", "clangd", "gopls", "gradle_ls", "vuels" }

lspconfig.servers = servers

-- lsps with default config
for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = on_attach,
        on_init = on_init,
        capabilities = capabilities,
    }
end

-- typescript
lspconfig.tsserver.setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
}

-- vue
lspconfig.vuels.setup {
    on_attach = function(client, bufnr)
        on_attach(client, bufnr)

        if client.resolved_capabilities then
            client.resolved_capabilities.document_formatting = true
            client.resolved_capabilities.document_range_formatting = true
        end
    end,
}

-- clangd
lspconfig.clangd.setup {
    on_attach = function(client, bufnr)
        client.server_capabilities.documentFormattingProvider = false
        client.server_capabilities.documentRangeFormattingProvider = false
        on_attach(client, bufnr)
    end,
    on_init = on_init,
    capabilities = capabilities,
}
