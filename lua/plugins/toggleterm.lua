return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup()
    -- Keymap
    vim.keymap.set("n", "<leader>tt", ":ToggleTerm direction=float<cr>", { desc = "toggle terminal" })
  end,
}
