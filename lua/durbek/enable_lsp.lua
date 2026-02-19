function enableLua()
    vim.lsp.config['lua_ls'] = {
        cmd = { 'lua-language-server' },
        filetypes = { 'lua' },
        root_markers = { { '.luarc.json', '.luarc.jsonc' }, '.git' },
        settings = {
            Lua = {
                runtime = {
                    version = 'LuaJIT',
                },
                diagnostics = {
                    globals = { 'vim' },
                },
                workspace = {
                    library = {
                        vim.env.VIMRUNTIME,
                    },
                    checkThirdParty = false,
                },
                telemetry = {
                    enable = false,
                },
            },
        },
    }

    vim.lsp.enable('lua_ls')
end

function enablePython()
    vim.lsp.config.pyright = {
        cmd = { 'pyright-langserver', '--stdio' },
        filetypes = { 'python' },
        root_markers = { '.git' },
    }

    vim.lsp.enable('pyright')
end

function enableDart()
    vim.lsp.config['dartls'] = {
        cmd = { 'dart', 'language-server' },
        filetypes = { 'dart' },
    }
    vim.lsp.enable('dartls')
end

function enableGo()
    vim.lsp.enable('gopls')
end

function enableSwift()
    vim.lsp.enable('sourcekit')
end

function enableZig()
    vim.lsp.config['zls'] = {
        -- Set to 'zls' if `zls` is in your PATH
        cmd = { 'zls' },
        filetypes = { 'zig' },
        root_markers = { 'build.zig' },
        -- There are two ways to set config options:
        --   - edit your `zls.json` that applies to any editor that uses ZLS
        --   - set in-editor config options with the `settings` field below.
        --
        -- Further information on how to configure ZLS:
        -- https://zigtools.org/zls/configure/
        settings = {
            zls = {
                -- Whether to enable build-on-save diagnostics
                --
                -- Further information about build-on save:
                -- https://zigtools.org/zls/guides/build-on-save/
                -- enable_build_on_save = true,

                -- omit the following line if `zig` is in your PATH
            }
        },
    }
    vim.lsp.enable('zls')
end

function enableKotlin()
    vim.lsp.enable('kotlin_lsp')
end

function enableTs()
    vim.lsp.config['tsserver'] = {
        cmd = { 'typescript-language-server', '--stdio' },
        filetypes = { 'typescript', 'typescriptreact', 'javascript', 'javascriptreact' },
    }
    vim.lsp.enable('tsserver')
end

return {
    enableLua(),
    enablePython(),
    enableDart(),
    enableGo(),
    enableSwift(),
    enableZig(),
    enableKotlin(),
    enableTs()
}
