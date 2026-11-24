return {
  "folke/which-key.nvim",
  opts = {
    spec = {
      { "<leader>o", group = "Obsidian" },
      { "<leader>on", "<cmd>ObsidianNew<CR>", desc = "Create new note" },
      { "<leader>os", "<cmd>ObsidianSearch<CR>", desc = "Search note" },
      { "<leader>ot", "<cmd>ObsidianToday<CR>", desc = "Create today's note" },
      { "<leader>oT", "<cmd>ObsidianTags<CR>", desc = "Search note by tags" },
      { "<leader>ol", "<cmd>ObsidianLink<CR>", desc = "Create link on note" },
      { "<leader>or", "<cmd>ObsidianRename<CR>", desc = "Rename note" },
      { "<leader>oc", "<cmd>ObsidianToggleCheckbox<CR>", desc = "Toggle checkbox" },

      { "<leader>t", group = "Terminal" },
      { "<leader>tk", function() require("settings.toggleterm_set_up").k9s_toggle() end, desc = "K9s" },
      { "<leader>td", function() require("settings.toggleterm_set_up").lazydocker_toggle() end, desc = "LazyDocker" },
      { "<leader>tf", "<cmd>ToggleTerm direction=float<CR>", desc = "Float" },
    },
  },
}
