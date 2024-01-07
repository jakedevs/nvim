return {

    {"williamboman/mason.nvim", config = true}, {
        "williamboman/mason-lspconfig",
        config = function()
            require("mason-lspconfig").setup({
            })
        end
    }
}
