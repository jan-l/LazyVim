return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "windwp/nvim-ts-autotag",
    },
    config = function()
      local opts = {
        highlight = {
          enable = true,
        },
        indent = {
          enable = true,
          disable = { "python" },
        },
        ensure_installed = {
          "tsx",
          "lua",
          "json",
          "css",
          "scss",
          "html",
          "python",
          "javascript",
          "typescript",
          "markdown",
          "markdown_inline",
          "yaml",
          "toml",
          "bash",
          "astro",
        },
        autotag = {
          enable = true,
        },
      }
      require("nvim-treesitter.configs").setup(opts)
    end,
  },
  {
    "nvim-treesitter/playground",
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        astro = {},
      },
    },
  },
}
