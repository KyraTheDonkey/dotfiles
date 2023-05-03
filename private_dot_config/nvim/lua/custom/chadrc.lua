---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "onedark",
  theme_toggle = { "onedark", "one_light" },

  --[[ 
  statusline = {
    overriden_modules = function()
      local sep_style = vim.g.statusline_sep_style
      local separators = (type(sep_style) == "table" and sep_style)
        or require("nvchad_ui.icons").statusline_separators[sep_style]
      local sep_l = separators["left"]

      return {
        cursor_position = function()
          local left_sep = "%#St_pos_sep#" .. sep_l .. "%#St_pos_icon#" .. " "
          local line = vim.fn.line "."
          local column = vim.fn.virtcol "."
          local text = string.format("%3d:%-2d", line, column)
         
          --return left_sep .. "%#St_pos_text#" .. " " .. text .. " "
          return text
        end,
      }
    end,
  },
  ]]

  hl_override = highlights.override,
  hl_add = highlights.add,
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
