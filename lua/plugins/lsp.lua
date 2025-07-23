local on_attach_flutter = function(client, bufnr)
local buf_map = function(mode, lhs, rhs, desc)
    
    client.server_capabilities.semanticTokensProvider = nil

    local opts = { noremap = true, silent = true, buffer = bufnr }
    if desc then opts.desc = desc end
    vim.keymap.set(mode, lhs, rhs, opts)
end

    vim.bo[bufnr].omnifunc = 'v:lua.vim.lsp.omnifunc'

    buf_map("n", "<leader>d", vim.lsp.buf.definition, "Go to Definition")
    buf_map("n", "gD", vim.lsp.buf.declaration, "Go to Declaration")
    buf_map("n", "gi", vim.lsp.buf.implementation, "Go to Implementation")
    buf_map("n", "<leader>r", vim.lsp.buf.references, "Find References")
    buf_map("n", "K", vim.lsp.buf.hover, "Hover Info")
    buf_map("n", "<C-k>", vim.lsp.buf.signature_help, "Signature Help")
    buf_map("n", "<leader>rn", vim.lsp.buf.rename, "Rename Symbol")
    buf_map("n", "<leader>ca", vim.lsp.buf.code_action, "Code Action")
    buf_map("n", "<leader>f", function() vim.lsp.buf.format { async = true } end, "Format Code")
    buf_map("v", "<leader>f", function() vim.lsp.buf.format { async = true } end, "Format Code")

    buf_map("n", "<leader>e", vim.diagnostic.open_float, "Show Line Diagnostics")
    buf_map("n", "[d", vim.diagnostic.goto_prev, "Previous Diagnostic")
    buf_map("n", "]d", vim.diagnostic.goto_next, "Next Diagnostic")
    buf_map("n", "<leader>q", vim.diagnostic.setloclist, "Diagnostics List")
    buf_map("n", "<leader>ws", vim.lsp.buf.workspace_symbol, "Search Workspace Symbols")
end
return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            require("lspconfig").lua_ls.setup {}
        end

    },
    {
        'nvim-flutter/flutter-tools.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'stevearc/dressing.nvim', -- optional for vim.ui.select
        },
        config = function()
            require("flutter-tools").setup {
                lsp = {
                    on_attach = on_attach_flutter
                }
            }
        end
    }
} 
