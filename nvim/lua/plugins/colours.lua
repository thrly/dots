return {
  -- the colorscheme should be available when starting Neovim
  {
    --solarized-osaka colour scheme
    "craftzdog/solarized-osaka.nvim",
    lazy = true,
    y = 1000, -- make sure to load this before all the other start plugins
    opts = function()
      return {
        transparent = true,
      }
    end,
  },

  {
    -- make tokyonight transparent
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },

  {
    -- lua/plugins/rose-pine.lua
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      vim.cmd("colorscheme rose-pine")
    end,
  },

  {
    --colourizer: highlight hex color codes w/ color
    "norcalli/nvim-colorizer.lua",
    config = true,
    lazy = true,
    cmd = {
      "ColorizerToggle",
      "ColorizerAttachToBuffer",
      "ColorizerReloadAllBuffers",
      "ColorizerDetachFromBuffer",
    },
    files = { "*.css", "*.jsx", "*.html" },
  },
}
