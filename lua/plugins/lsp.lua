return {

  {
    "williamboman/mason.nvim",
    config = true,
  },

  {
    "williamboman/mason-lspconfig",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls" }
      })
    end
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
    local lspconfig = require('lspconfig')
    lspconfig.lua_ls.setup({})
  end
  },

}
