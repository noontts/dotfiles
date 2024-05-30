-- This file  needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "kanagawa",

  statusline = {
    theme = "vscode",
    separator_style = "default",
  },

  tabufline = {
    lazyload = true,
    overriden_modules = function(modules)
      table.remove(modules, 4)
    end,
  },

  telescope = {
    style = "bordered",
  }
	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

return M
