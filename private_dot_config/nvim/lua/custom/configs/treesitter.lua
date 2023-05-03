local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.simpl = {
  install_info = {
    url = "~/Documents/Compilers/compilers-keystone/",
    files = { "src/parser.c", "src/scanner.c" },
  },
  filetype = "simpl",
}
