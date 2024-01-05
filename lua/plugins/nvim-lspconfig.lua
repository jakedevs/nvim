return {

    "neovim/nvim-lspconfig",
    dependencies = {"folke/neodev.nvim", opts = {}},
    config = function()
        local lspconfig = require("lspconfig")
        lspconfig.lua_ls.setup({})
        lspconfig.tsserver.setup({})
        lspconfig.rust_analyzer.setup({})
    end
}
