-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Navigation helpers
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Center cursor after moving down half-page" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Center cursor after moving up half-page" })

-- Modes and Command
vim.keymap.set("i", "jj", "<Esc>", { desc = "Escape from Insert mode" })
vim.keymap.set("n", ";;", ":", { desc = ": Command" })
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit Terminal mode" })

-- Easier window movements
----  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Blaxhole deletes: x and c
vim.keymap.set("n", "x", '"_x')
-- Put change into the blackhole register
vim.keymap.set("n", "c", '"_c')

-- Quickly go to the start/end of the line while in insert mode.
vim.keymap.set("i", "<C-i>", "<C-o>I", { desc = "Go to the start of the line" })
vim.keymap.set("i", "<C-a>", "<C-o>A", { desc = "Go to the end of the line" })

-- yank to end of line with Y
vim.keymap.set("n", "Y", "$y", { desc = "Yank to End of lines" })
