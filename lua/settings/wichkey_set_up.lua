local status_ok, wk = pcall(require, "which-key")
if not status_ok then
  return
end

wk.add({
  { "<leader>on", "<cmd>ObsidianNew<CR>", desc = "Create new note" },
  { "<leader>os", "<cmd>ObsidianSearch<CR>", desc = "Search note" },
  { "<leader>ot", "<cmd>ObsidianToday<CR>", desc = "Create today’s note" },
  { "<leader>oT", "<cmd>ObsidianTags<CR>", desc = "Search note by tags" },
  { "<leader>ol", "<cmd>ObsidianLink<CR>", desc = "Create link on note" },
  { "<leader>or", "<cmd>ObsidianRename<CR>", desc = "Rename note" },
  { "<leader>oc", "<cmd>ObsidianToggleCheckbox<CR>", desc = "Toggle Checkbox" },
}, { prefix = "<leader>", mode = "n", desc = "Obsidian" })
