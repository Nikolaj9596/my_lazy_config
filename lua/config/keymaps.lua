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

map("n", "sv", "<cmd>vsplit<CR>", opts)
map("n", "<Leader>ch", "<cmd>nohlsearch<cr>", { noremap = true, silent = true, desc = "nohlsearch" })

-- Delete buffer
map("n", "<Leader>bd", "<cmd>Bdelete!<CR>", opts)

-- Save buffer
map("n", "<Leader>w", "<cmd>w<cr><esc>", opts)
-- Terminal

map("n", "<c-_>", function()
  Snacks.terminal(nil, { cwd = LazyVim.root(), win = { position = "float" } })
end, { desc = "Terminal (Root Dir)" })

map("n", "<c-_>", function()
  Snacks.terminal(nil, { cwd = LazyVim.root(), win = { position = "float" } })
end, { desc = "which_key_ignore" })

-- Quite
-- map(
--   "n",
--   "<Leader>qq",
--   '<cmd>lua require("settings/functions").smart_quit()<CR>',
--   { noremap = true, silent = true, desc = "Quite" }
-- )

-- Marks
map("n", "<Leader>md", ":delmarks<Space>", { noremap = true, silent = true })

-- Keystore
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
