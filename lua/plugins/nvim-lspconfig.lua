return {

    "neovim/nvim-lspconfig",
    config = function()
        local lspconfig = require("lspconfig")
        lspconfig.lua_ls.setup({})
        lspconfig.tsserver.setup({})
        lspconfig.rust_analyzer.setup({})
    end
}
