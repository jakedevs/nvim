return {

  "echasnovski/mini.nvim",
  config = function()
    -- require("../randomQuote")
    -- require("mini.starter").setup({
    --   header = quotes[math.random(1, tablelength(quotes))],
    -- })
    require("mini.indentscope").setup({
      delay = 100,
      symbol = "|",
    })
    require("mini.pick").setup({})
    require("mini.comment").setup({})
    require("mini.files").setup({
      options = {
        -- Whether to delete permanently or move into module-specific trash
        -- Whether to use for editing directories
        use_as_default_explorer = true,
      },
    })
    require("mini.notify").setup()
    require("mini.extra").setup({})

    -- Keymap
    vim.keymap.set("n", "<leader>bi", MiniPick.builtin.buffers, { desc = "list buffers" })
    vim.keymap.set("n", "<leader>ff", MiniPick.builtin.files, { desc = "find files" })
    vim.keymap.set("n", "<leader>fd", MiniExtra.pickers.explorer, { desc = "find everything" })
    vim.keymap.set("n", "<leader>fs", MiniPick.builtin.grep_live, { desc = "search text" })
    vim.keymap.set("n", "<leader>fh", MiniPick.builtin.help, { desc = "search docs" })
    vim.keymap.set("n", "<leader>fm", MiniFiles.open, { desc = "file manager" })

  end,
}
