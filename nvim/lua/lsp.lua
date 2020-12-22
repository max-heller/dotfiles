local lsp = require'lspconfig'

-- Set up lsp-status
local lsp_status = require'lsp-status'
lsp_status.register_progress()

local on_attach = function(client, bufnr)
    lsp_status.on_attach(client, bufnr)
end

-- Configure rust-analyzer
-- https://github.com/neovim/nvim-lspconfig#rust_analyzer
lsp.rust_analyzer.setup({
    on_attach = on_attach,
    capabilities = lsp_status.capabilities,
    settings = {
        ["rust-analyzer"] = {
            cargo = {
                allFeatures = true,
                loadOutDirsFromCheck = true,
            },
            ["checkOnSave.allFeatures"] = true,
            ["procMacro.enable"] = true,
        }
    },
})

-- Enable diagnostics
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    virtual_text = true,
    signs = true,
    update_in_insert = true,
  }
)
