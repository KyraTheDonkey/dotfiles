local autocmd = vim.api.nvim_create_autocmd

vim.o.textwidth = 80

-- TeX has some special rules.
autocmd({"BufNewFile","BufRead"}, {
  pattern = "*.tex",
  command = "set textwidth=0",
})
autocmd({"BufNewFile", "BufRead"}, {
  pattern = "*.tex",
  command = "setlocal spell spelllang=en_gb",
})
