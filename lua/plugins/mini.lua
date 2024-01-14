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
  end,
}
