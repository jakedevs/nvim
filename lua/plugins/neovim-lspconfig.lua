require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls" },
})

local lspconfig = require("lspconfig")
lspconfig.lua_ls.setup({})
lspconfig.html.setup({})
lspconfig.cssls.setup({})
lspconfig.tsserver.setup({})
lspconfig.taplo.setup({})
lspconfig.ltex.setup({ settings = {
  ltex = {
    language = "en-US",
  },
} })
settings = {}
