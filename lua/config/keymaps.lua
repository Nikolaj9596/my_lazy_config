-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local opts = { noremap = true, silent = true }
local map = vim.keymap.set

map("n", "<C-h>", ":TmuxNavigateLeft<CR>", opts)
map("n", "<C-j>", ":TmuxNavigateDown<CR>", opts)
map("n", "<C-k>", ":TmuxNavigateUp<CR>", opts)
map("n", "<C-l>", ":TmuxNavigateRight<CR>", opts)

map("n", "*", "*zz", opts)
map("n", "#", "#zz", opts)

map("n", "sv", "<cmd>vsplit<CR>", opts)
map("n", "ss", "<cmd>split<CR>", opts)
map("n", "<Leader>ch", "<cmd>nohlsearch<cr>", { noremap = true, silent = true, desc = "nohlsearch" })

-- Delete buffer
map("n", "<Leader>bd", "<cmd>Bdelete!<CR>", opts)

-- Save buffer
map("n", "<Leader>w", "<cmd>w<cr><esc>", opts)
-- Terminal

map("n", "<c-/>", function()
  Snacks.terminal(nil, { cwd = LazyVim.root(), win = { position = "float" } })
end, { desc = "Terminal (Root Dir)" })

map("n", "<c-_>", function()
  Snacks.terminal(nil, { cwd = LazyVim.root(), win = { position = "float" } })
end, { desc = "which_key_ignore" })
--
-- Quite
map(
  "n",
  "<Leader>q",
  '<cmd>lua require("settings/functions").smart_quit()<CR>',
  { noremap = true, silent = true, desc = "Quite" }
)

-- Spell: add word to the dictionary matching its script (Cyrillic -> ru)
map("n", "zg", function()
  require("settings.functions").smart_add_to_spell()
end, { noremap = true, silent = true, desc = "Add word to spell dictionary (auto)" })
map("n", "<Leader>ze", function()
  require("settings.functions").add_to_spell("en")
end, { noremap = true, silent = true, desc = "Add word to EN dictionary" })
map("n", "<Leader>zr", function()
  require("settings.functions").add_to_spell("ru")
end, { noremap = true, silent = true, desc = "Add word to RU dictionary" })

-- Marks
map("n", "<Leader>md", ":delmarks<Space>", { noremap = true, silent = true })

-- Keystore
map("i", "jk", "<ESC>", opts)

-- Visual --
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)
