return {
  "folke/snacks.nvim",
  opts = {
    notifier = { enabled = true },

    -- show hidden files in snacks.explorer
    picker = {
      -- show hidden files like .env
      hidden = true,
      -- show files ignored by git like node_modules
      ignored = true,
      -- exclude = { "node_modules", ".git" },
      replace_netrw = true,
    },
    explorer = {
      replace_netrw = true, -- use explorer on open
    },
  },
}
