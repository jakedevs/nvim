return {

  "echasnovski/mini.nvim",
  version = false,
  config = function()

    require("../randomQuote")
    require("mini.starter").setup({
      header = quotes[math.random(1, tablelength(quotes))],
    })
    require("mini.indentscope").setup({
      delay = 100,
      symbol = "|",
    })
    require("mini.pick").setup({})
    --require("mini.surround").setup({})
    require("mini.comment").setup({})
    require("mini.surround").setup({})

    -- Keymap
    vim.keymap.set("n", "<leader>bi", MiniPick.builtin.buffers, { desc = "list buffers" })
    vim.keymap.set("n", "<leader>ff", MiniPick.builtin.files, { desc = "find files" })
    vim.keymap.set("n", "<leader>fs", MiniPick.builtin.grep_live, { desc = "search text" })
  end,
}
