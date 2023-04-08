---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<C-a>"] = { "GVgg", "select all" },
    ["<C-S-/>"] = { "<cmd> set hlsearch! <CR>", "toggle search highlight" },
  },

  i = {
    ["jk"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
    ["<C-v>"] = { "<C-r>+", "paste" },
    ["<C-CR>"] = { "<End><CR>", "enter to new line" },
  },
}

M.comment = {
  n = {
    ["<C-/>"] = {
      function()
        require("Comment.api").toggle.linewise.current()
      end,
      "toggle comment",
    },
  },
  v = {
    ["<C-/>"] = {
      "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
      "toggle comment",
    },
  },
}

return M
