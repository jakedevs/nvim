return {

  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function() require("mason").setup() end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls" },
      })
    end,
  },

  {
    "neovim/nvim-lspconfig",
    lazy = false,
    dependencies = { "folke/neodev.nvim", opts = {} },
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.html.setup({})
      lspconfig.cssls.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.biome.setup({})
      -- lspconfig.ltex.setup({
      --   settings = {
      --     ltex = {
      --       language = "en-US",
      --     },
      --   },
      -- })
      settings = {}
    end,
  },
}
