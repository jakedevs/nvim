return {
  "akinsho/toggleterm.nvim",
  config = function()
    require("toggleterm").setup()
    vim.keymap.set("n", "<leader>th", ":ToggleTerm size=22 direction=horizontal<CR>", { desc = "toggle terminal hsplit" })
    vim.keymap.set("n", "<leader>tv", ":ToggleTerm size=100 direction=vertical<CR>", { desc = "toggle terminal floating" })
    vim.keymap.set("n", "<leader>tf", ":ToggleTerm size=22 direction=float<CR>", { desc = "toggle terminal floating" })
    vim.keymap.set("n", "<leader>tt", ":ToggleTerm size=22 direction=tab<CR>", { desc = "toggle terminal tab" })

    function _G.set_terminal_keymaps()
      local opts = { buffer = 0 }
      vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
      -- vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
      -- vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
      -- vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
      -- vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
      -- vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
    end

    vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
  end,
}
