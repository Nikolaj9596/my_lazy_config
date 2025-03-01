return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      style = "moon",
    },
  },
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "solarized-osaka",
      -- colorscheme = "tokyonight",
      -- colorscheme = "kanagawa-paper",
      -- colorscheme = "material",
      -- colorscheme = "miasma",
      -- colorscheme = "onedark",
      colorscheme = "darkplus",
      -- colorscheme = "catppuccin",
    },
  },
  {
    "navarasu/onedark.nvim",
    opts = {
      colorscheme = "warm",
    },
  },
  {
    "xero/miasma.nvim",
  },

  { "lunarvim/darkplus.nvim" },

  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "marko-cerovac/material.nvim" },
}
