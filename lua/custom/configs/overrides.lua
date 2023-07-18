local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "c",
    "markdown",
    "markdown_inline",
    "rust",
    "python",
  },
  indent = {
    enable = true,
    disable = {
      "python",
    },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",

    -- TODO - fix this - :Mason, then add everything here
    -- only useful for when installing nvim on new laptop
    -- 230423
    -- "rust",
    -- 230512
    -- "python",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  -- 230502 - add relative number for easier navigation
  view = {
    number = true,
    relativenumber = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
