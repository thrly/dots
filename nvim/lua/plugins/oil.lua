return {
  {
    "stevearc/oil.nvim",
    -- ---@module 'oil'
    -- --@type oil.SetupOpts
    cmd = "Oil",
    opts = {
      default_file_explorer = false, -- keep Snacks / Neo-tree
      view_options = {
        show_hidden = true,
      },
    },
    -- oil file editor
    keys = { { "<leader>o", "<CMD>Oil<CR>", desc = "Oil: Edit directory as buffer" } },
    -- Optional dependencies
    dependencies = { { "nvim-mini/mini.icons", opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = true,
  },
}
