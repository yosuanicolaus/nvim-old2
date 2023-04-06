---@type MappingsTable
local M = {}

M.general = {
  n = {
    -- [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<C-_>"] = { "<cmd> set hlsearch! <CR>", "toggle search highlight" },

    -- for Neovide
    ["<C-/>"] = { "<cmd> set hlsearch! <CR>", "toggle search highlight" },
  },

  i = {
    ["jk"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
    ["<C-v>"] = { "<C-r>+", "paste" },
  },
}

-- more keybinds!

return M
