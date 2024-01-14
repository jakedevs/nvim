-- which-key docs
local wk = require("which-key")
wk.register({
  b = { name = "buffer operations" },
  f = { name = "file operations" },
  t = { name = "terminal operations" },
  c = { name = "code operations" },
  y = { name = "clipboard operations" },
  p = { name = "paste image" },
}, { prefix = "<leader>" })
-- format function
function Format() require("conform").format({ async = true, lsp_fallback = false }) end

------------------------------------------------------
vim.keymap.set("n", "<leader>bk", ":q!<cr>", { desc = "kill buffer" })
vim.keymap.set("n", "<leader>bn", ":tabnew<cr>", { desc = "new buffer" })
vim.keymap.set("n", "<leader>bh", ":tabprevious<cr>", { desc = "previous buffer" })
vim.keymap.set("n", "<leader>bl", ":tabnext<cr>", { desc = "next buffer" })
vim.keymap.set("n", "<leader>bi", MiniPick.builtin.buffers, { desc = "list buffers" })
-- File operations
vim.keymap.set("n", "<leader>ff", MiniPick.builtin.files, { desc = "find files" })
vim.keymap.set("n", "<leader>fs", MiniPick.builtin.grep_live, { desc = "search text" })
vim.keymap.set("n", "<leader>fm", ":Yazi<cr>", { desc = "manage files" })

-- Clipboard operations
vim.keymap.set({ "n", "v" }, "<leader>yy", "<cmd> y+<cr>", { desc = "copy line" })
vim.keymap.set({ "n", "v" }, "<leader>yf", "<cmd> %y+<cr>", { desc = "copy file" })
vim.keymap.set({ "n", "v" }, "<leader>p", "<cmd> p+<cr>", { desc = "paste clipboard" })

-- Terminal
vim.keymap.set("n", "<leader>tt", ":ToggleTerm direction=float<cr>", { desc = "toggle terminal" })

-- LSP
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "show docs" })
vim.keymap.set("n", "<leader>cf", Format, { desc = "format code" })
vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, { desc = "code actions " })
