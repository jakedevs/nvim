require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { { "prettierd", "prettier" } },
    css = { { "prettierd", "prettier" } },
    html = { { "prettierd", "prettier" } },
    toml = { "taplo" },
  },
})

function Format() require("conform").format({ async = true, lsp_fallback = false }) end
vim.keymap.set("n", "<leader>cf", Format, { desc = "format code" })
