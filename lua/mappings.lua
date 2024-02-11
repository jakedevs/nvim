-- which-key docs
local wk = require("which-key")
wk.register({
  b = { name = "buffer operations" },
  f = { name = "file operations" },
  c = { name = "code operations" },
  y = { name = "clipboard operations" },
  p = { name = "paste image" },
}, { prefix = "<leader>" })
-- format function
function Format() require("conform").format({ async = true, lsp_fallback = true }) end

------------------------------------------------------
vim.keymap.set("n", "<leader>bk", ":q!<cr>", { desc = "kill buffer" })
vim.keymap.set("n", "<leader>bn", ":tabnew<cr>", { desc = "new buffer" })
vim.keymap.set("n", "<leader>bh", ":tabprevious<cr>", { desc = "previous buffer" })
vim.keymap.set("n", "<leader>bl", ":tabnext<cr>", { desc = "next buffer" })
vim.keymap.set("n", "<leader>bo", ":only<cr>", { desc = "next buffer" })

-- Clipboard operations
vim.keymap.set({ "n", "v" }, "<leader>yy", "<cmd> y+<cr>", { desc = "copy line" })
vim.keymap.set({ "n", "v" }, "<leader>yf", "<cmd> %y+<cr>", { desc = "copy file" })
vim.keymap.set({ "n", "v" }, "<leader>p", "<cmd> p+<cr>", { desc = "paste clipboard" })

-- LSP
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "show docs" })
vim.keymap.set("n", "<leader>cf", Format, { desc = "format code" })
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "code actions" })

-- Cosmetic
vim.keymap.set({ "n", "v" }, "<leader>le", ":set linebreak<cr>", { desc = "enable line break" })
vim.keymap.set({ "n", "v" }, "<leader>ld", ":set nolinebreak<cr>", { desc = "disable line break" })

vim.keymap.set("n", "<leader>fm", MiniFiles.open, { desc = "file manager" })
