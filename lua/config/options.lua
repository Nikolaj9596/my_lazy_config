-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
local Util = require("lazyvim.util")
local map = vim.keymap.set
local del = vim.keymap.del
local set = Util.safe_keymap_set

map("n", "<Leader>w", "<cmd>w<cr><esc>", { desc = "Save file" })

map("n", "C-h", ":TmuxNavigateLeft<CR>")
map("n", "C-j", ":TmuxNavigateDown<CR>")
map("n", "C-k", ":TmuxNavigateUp<CR>")
map("n", "C-l", ":TmuxNavigateRight<CR>")
