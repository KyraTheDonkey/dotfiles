local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local capabilities_utf16 = require("plugins.configs.lspconfig").capabilities
capabilities_utf16.offsetEncoding = { "utf-16" }


local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "jdtls", "pylsp" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig["clangd"].setup {
  on_attach = on_attach,
  capabilities = capabilities_utf16,
}

-- I need to change this to british english, so I can't use the default 
lspconfig["texlab"].setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
	  texlab = {
      build = {
        args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
        executable = "latexmk",
        forwardSearchAfter = false,
        onSave = false
      },
      chktex = {
        onEdit = false,
        onOpenAndSave = true
      },
	  },
  },
}

vim.diagnostic.config({
  virtual_text = false,
})

