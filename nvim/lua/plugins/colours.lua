return {
  -- the colorscheme should be available when starting Neovim
  {
    --solarized-osaka colour scheme
    "craftzdog/solarized-osaka.nvim",
    lazy = true,
    opts = function()
      return {
        sidebars = "transparent",
        transparent = true,
      }
    end,
  },

  -- {
  --   -- make tokyonight transparent
  --   "folke/tokyonight.nvim",
  --
  --   lazy = true,
  --   y = 1000, -- make sure to load this before all the other start plugins
  --   opts = {
  --     transparent = true,
  --     styles = {
  --       sidebars = "transparent",
  --       floats = "transparent",
  --     },
  --   },
  -- },
  -- {
  --   dir = "/home/thrly/dev/petrichor.nvim", -- or wherever your repo is
  --   name = "petrichor",
  --   priority = 1000,
  --   config = function()
  --     require("petrichor").setup()
  --   end,
  -- },
  {
    -- lua/plugins/rose-pine.lua
    "rose-pine/neovim",
    lazy = true,
    name = "rose-pine",
    config = function()
      vim.cmd("colorscheme rose-pine")
    end,
  },
  {
    "vague-theme/vague.nvim",
    lazy = true, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other plugins
    config = function()
      -- NOTE: you do not need to call setup if you don't want to.
      require("vague").setup({
        -- optional configuration here
      })
      vim.cmd("colorscheme vague")
    end,
  },

  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd("colorscheme kanagawa")
    end,
  },

  { -- set default/starting colorscheme
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "petrichor",
      -- colorscheme = "tokyonight-moon",
      colorscheme = "solarized-osaka",
    },
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
