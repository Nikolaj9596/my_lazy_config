return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      -- Registered as a normal LSP server: LazyVim configures it, enables it and
      -- installs the `cspell-lsp` binary via Mason (ensure_installed).
      -- `cmd` and `root_markers` come from nvim-lspconfig's built-in cspell_ls config.
      cspell_ls = {
        filetypes = {
          "lua",
          "python",
          "javascript",
          "typescript",
          "html",
          "css",
          "json",
          "yaml",
          "markdown",
          "gitcommit",
          "go",
          "proto",
        },
      },
      -- LazyVim's python extra also sets pyright settings; these merge with its defaults.
      pyright = {
        settings = {
          python = {
            analysis = {
              typeCheckingMode = "basic",
              autoSearchPaths = true,
              useLibraryCodeForTypes = true,
            },
          },
        },
      },
    },
  },
}
