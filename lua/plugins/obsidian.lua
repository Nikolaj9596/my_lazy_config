return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  opts = require("settings.obsidian_set_up"),
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
}
