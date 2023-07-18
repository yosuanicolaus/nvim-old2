---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<C-a>"] = { "GVgg", "select all" },
    ["<C-j>"] = { "<cmd> bp <CR>", "modern change tab left" },
    ["<C-k>"] = { "<cmd> bn <CR>", "modern change tab right" },
  },

  i = {
    ["jk"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
    ["<C-v>"] = { "<C-r>+", "paste" },
    ["<C-CR>"] = { "<End><CR>", "enter to new line" },
    ["<S-CR>"] = { "<ESC> O", "enter to new line before" },

    -- navigation within insert mode
    ["<A-h>"] = { "<Left>", "move left" },
    ["<A-l>"] = { "<Right>", "move right" },
    ["<A-j>"] = { "<Down>", "move down" },
    ["<A-k>"] = { "<Up>", "move up" },
    ["<A-C-h>"] = { "<C-Left>", "move left" },
    ["<A-C-l>"] = { "<C-Right>", "move right" },

    ["<C-j>"] = { "<ESC><cmd> bp <CR>", "modern change tab left" },
    ["<C-k>"] = { "<ESC><cmd> bn <CR>", "modern change tab right" },
  },

  c = {
    ["<C-v>"] = { "<C-r>+", "paste" }, -- doesn't work?
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

M.nvimtree = {
  n = {
    ["<C-b>"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" }, -- vscode similarization
  },
}

return M
