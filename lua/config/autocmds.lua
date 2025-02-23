-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
--
local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.grpcnvim = {
  install_info = {
    url = "https://github.com/antosha417/tree-sitter-grpc-nvim",
    revision = "master",
    files = { "src/parser.c", "src/scanner.cc" },
  },
  filetype = "grpcnvim",
}

local grpc_group = vim.api.nvim_create_augroup("grpc", { clear = true })
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  group = grpc_group,
  pattern = { "*.grpc" },
  command = "set ft=grpcnvim",
})
vim.api.nvim_create_autocmd("User", {
  pattern = "LeapEnter",
  callback = function()
    vim.cmd.hi("Cursor", "blend=100")
    vim.opt.guicursor:append({ "a:Cursor/lCursor" })
  end,
})
vim.api.nvim_create_autocmd("User", {
  pattern = "LeapLeave",
  callback = function()
    vim.cmd.hi("Cursor", "blend=0")
    vim.opt.guicursor:remove({ "a:Cursor/lCursor" })
  end,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = {
    "*.hurl",
    "*.http",
  },
  callback = function()
    vim.cmd("set filetype=http")
  end,
})
