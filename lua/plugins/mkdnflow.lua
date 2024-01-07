return {

  'jakewvincent/mkdnflow.nvim',
  dependencies = { "nvim-lua/plenary.nvim",},
  config = function()
    require('mkdnflow').setup({
      modules = {
        cmp = true,
      },
      perspective = {
        priority = 'root',
        root_tell = 'Index.md',
      }
    })
  end

}
