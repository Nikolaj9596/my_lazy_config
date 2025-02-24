-- Configure Pyright with nvim-lspconfig
local lspconfig = require('lspconfig')

lspconfig.pyright.setup({
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "basic",  -- Set the type checking mode, could be "off", "basic", "strict"
        autoSearchPaths = true,      -- Automatically search for the Python environment
        useLibraryCodeForTypes = true,  -- Use library code for type checking
      },
    },
  },
})
