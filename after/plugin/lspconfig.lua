local lsp = require('lspconfig')

lsp.phpactor.setup {underline=false}
lsp.pylsp.setup {}
lsp.gopls.setup {}
lsp.rust_analyzer.setup {}
lsp.eslint.setup {}

lsp.lua_ls.setup {
    settings = {
        Lua = {
            diagnostics = {
                globals = {'vim'},
            },
        },
    },
}
