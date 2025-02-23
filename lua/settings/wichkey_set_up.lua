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
}, { prefix = "o", mode = "n", desc = "Obsidian" })

wk.add({
  { "<leader>tk", "<cmd>lua require 'settings/toggleterm_set_up.lua'.k9s_toggle()<cr>", desc = "K10s" },
  { "<leader>td", "<cmd>lua require 'settings/toggleterm_set_up.lua'.lazydocker_toggle()<cr>", desc = "LazyDocker" },
  { "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", desc = "Float" },
}, { prefix = "t", mode = "n", desc = "Terminal" })

wk.add({
  { "<leader>ma", "<cmd>silent BookmarkAnnotate<cr>", desc = "Annotate" },
  { "<leader>mc", "<cmd>silent BookmarkClear<cr>", desc = "Clear" },
  { "<leader>mm", "<cmd>silent BookmarkToggle<cr>", desc = "Toggle" },
  { "<leader>mj", "<cmd>silent BookmarkNext<cr>", desc = "Next" },
  { "<leader>mk", "<cmd>silent BookmarkPrev<cr>", desc = "Prev" },
  { "<leader>mx", "<cmd>BookmarkClearAll<cr>", desc = "Clear All" },
  { "<leader>mS", "<cmd>silent BookmarkShowAll<cr>", desc = "Show All" },
}, {
  mode = "n",
  prefix = "m",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true, -- use `nowait` when creating keymaps
})
