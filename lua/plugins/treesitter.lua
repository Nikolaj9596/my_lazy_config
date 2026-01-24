return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    opts = opts or {}

    local ok, parsers = pcall(require, "nvim-treesitter.parsers")
    if not ok or not parsers.parser_configs then
      return opts
    end

    parsers.parser_configs.grpcnvim = {
      install_info = {
        url = "https://github.com/antosha417/tree-sitter-grpc-nvim",
        revision = "master",
        files = { "src/parser.c", "src/scanner.cc" },
      },
      filetype = "grpcnvim",
    }

    return opts
  end,
}
