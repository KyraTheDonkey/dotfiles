local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.simpl = {
  install_info = {
    url = "~/Documents/Compilers/tree-sitter-simpl/",
    files = { "src/parser.c", "src/scanner.c" },
  },
  filetype = "simpl",
}

