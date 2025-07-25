return {
  -- change the logo on LazyVim's loading screen
  "goolord/alpha-nvim",
  opts = function(_, dashboard)
    local logo = [[
 █  █       █  
▀█▀ █▀▙ █▞▀ █  █ █ 
 █▄ █ █ █   █▄ ▜▄█
                 █ 
               ▜▄▛ 
 ]]
    dashboard.section.header.val = vim.split(logo, "\n")
  end,
}
