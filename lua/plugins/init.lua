return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "stevearc/oil.nvim",
    opts = {},
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    lazy = false,
  },

  {
    "nvim-tree/nvim-tree.lua",
    enabled = false,
  },

  {
    "mason-org/mason.nvim",
    cmd = { "Mason", "MasonInstall", "MasonUpdate" },
    opts = {
      ensure_installed = {
        "clangd",
        "css-lsp",
        "gopls",
        "html-lsp",
        "lua-language-server",
        "pyright",
        "ruff",
        "rust-analyzer",
        "stylua",
        "typescript-language-server",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "c",
        "cpp",
        "python",
        "rust",
        "gleam",
        "go",
        "javascript",
        "typescript",
      },
    },
  },
}
