return {
  "saghen/blink.cmp",

  -- which-key will automatically register this
  keys = {
    {
      "<leader>uq",
      function()
        -- hide menu immediately when disabling
        pcall(function() require("blink.cmp").hide() end)

        vim.g.blink_completion = not vim.g.blink_completion
        print("Completion: " .. (vim.g.blink_completion and "ON" or "OFF"))
      end,
      desc = "Toggle Completion",
    },
  },

  opts = function(_, opts)
    -- DEFAULT: OFF
    vim.g.blink_completion = false

    opts.keymap = {
      preset = "enter",
      ["<Tab>"] = { "snippet_forward", "select_next", "fallback" },
      ["<S-Tab>"] = { "snippet_backward", "select_prev", "fallback" },
    }

    opts.completion = {
      list = {
        selection = {
          preselect = false,
          auto_insert = true,
        },
      },
    }

    -- GLOBAL ENABLE SWITCH
    opts.enabled = function()
      return vim.g.blink_completion
    end

    return opts
  end,
}
