require("tfm").setup({
  file_manager = "yazi",
  replace_netrw = false,
  enable_cmds = true,
  keybindings = {
    ["<ESC>"] = "q",
  },
})

vim.keymap.set("n", "<leader>fm", ":Tfm<CR>", { desc = "file manager" })
function tfmtab()
  local tfm = require("tfm")
  tfm.open(nil, tfm.OPEN_MODE.tabedit)
end
vim.keymap.set("n", "<leader>ft", tfmtab, { desc = "file manager - open in new tab" })
