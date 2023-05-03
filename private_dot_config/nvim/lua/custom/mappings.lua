---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>mk"] = { "<cmd> TexlabBuild <CR>" },
  },
}

-- more keybinds!

return M
