local autocmd = vim.api.nvim_create_autocmd

vim.o.textwidth = 80

autocmd({"BufNewFile","BufRead"}, {
  pattern = "*.tex,*.bib,*.md,*.txt,*.py",
  command = "set textwidth=0",
})
autocmd({"BufNewFile", "BufRead"}, {
  pattern = "*.tex",
  command = "setlocal spell spelllang=en_gb",
})

vim.filetype.add({
  extension = {
    simpl = 'simpl',
    flex = 'jflex',
    cup = 'cup',
    rasp = 'rasp',
  }
})

vim.diagnostic.config({ virtual_text = false, })
