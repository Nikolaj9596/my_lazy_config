-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local Util = require("lazyvim.util")
local opts = { noremap = true, silent = true }
local map = vim.keymap.set

map("n", "<C-h>", ":TmuxNavigateLeft<CR>", opts)
map("n", "<C-j>", ":TmuxNavigateDown<CR>", opts)
map("n", "<C-k>", ":TmuxNavigateUp<CR>", opts)
map("n", "<C-l>", ":TmuxNavigateRight<CR>", opts)

map("n", "*", "*zz", opts)
map("n", "#", "#zz", opts)

map("n", "<Leader>w", ":w<CR>", opts)

map("i", "jk", "<ESC>", opts)

-- Visual --
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- comment line key binding
if Util.has("Comment.nvim") then
  map("n", "<Leader>/", function()
    require("Comment.api").toggle.linewise.count(vim.v.count > 0 and vim.v.count or 1)
  end, { desc = "Toggle comment line" })
  map(
    "v",
    "<Leader>/",
    "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>",
    { desc = "Toggle comment for selection" }
  )
end
