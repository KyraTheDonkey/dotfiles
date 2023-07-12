---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>fd"] = { "<cmd>Telescope diagnostics<CR>", opts = { nowait = true, noremap = true}},
    ["<leader>mk"] = { "<cmd> TexlabBuild <CR>", opts = { silent = true, noremap = true } },
    ["<leader>tx"] = { "<cmd>TroubleToggle<CR>", opts = { silent = true, noremap = true } },
    ["<leader>tw"] = { "<cmd>TroubleToggle workspace_diagnostics<CR>", opts = { silent = true, noremap = true } },
    ["<leader>td"] = { "<cmd>TroubleToggle document_diagnostics<CR>", opts = { silent = true, noremap = true } },
    ["<leader>tl"] = { "<cmd>TroubleToggle loclist<CR>", opts = { silent = true, noremap = true } },
    ["<leader>tq"] = { "<cmd>TroubleToggle quickfix<CR>", opts = { silent = true, noremap = true } },
    ["gR"] = { "<cmd>TroubleToggle lsp_references<CR>", opts = { silent = true, noremap = true } },
    ["<leader>tf"] = { "<cmd>lua vim.diagnostic.open_float(nil, {focus=false})<CR>", "Floating Diagnostics", opts = { silent = true, noremap = true } },
  },
}

-- more keybinds!

return M
