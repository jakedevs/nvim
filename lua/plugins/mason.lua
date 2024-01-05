return {

    {"williamboman/mason.nvim", config = true}, {
        "williamboman/mason-lspconfig",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls", "rust_analyzer", "clangd", "tsserver"
                }
            })
        end
    }
}
