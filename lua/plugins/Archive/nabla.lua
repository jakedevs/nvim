return {
  "jbyuki/nabla.nvim",
  config = function()
    function Popup() require("nabla").popup() end

    function Preview()
      require "nabla".enable_virt({
        autogen = true, -- auto-regenerate ASCII art when exiting insert mode
        silent = true, -- silents error messages
      })
    end

    vim.keymap.set({ "n", "v" }, "<leader>nb", Popup, { desc = "nabla popup" })
    vim.keymap.set({ "n", "v" }, "<leader>np", Preview, { desc = "nabla inline preview" })
  end
}
