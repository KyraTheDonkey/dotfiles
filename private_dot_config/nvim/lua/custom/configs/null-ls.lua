local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } }, -- so prettier works only on these filetypes

  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format.with { filetypes = { "c", "cpp" } },

  -- java
  b.formatting.google_java_format,

  -- python
  b.formatting.autopep8,

  -- latexindent
  b.formatting.latexindent,

  b.diagnostics.misspell.with { extra_args = { "-locale", "UK"} },
}

null_ls.setup {
  debug = true,
  sources = sources,
}
