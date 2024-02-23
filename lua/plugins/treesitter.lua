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
          "astro",
          "bash",
          "cmake",
          "css",
          "fish",
          "gitignore",
          "go",
          "html",
          "http",
          "javascript",
          "markdown",
          "markdown_inline",
          "python",
          "scss",
          "sql",
          "svelte",
          "typescript",
          "toml",
          "yaml",
        },
        autotag = {
          enable = true,
          enable_rename = true,
          enable_close_on_slash = true,
        },
      }
      require("nvim-treesitter.configs").setup(opts)
    end,
  },
  {
    "nvim-treesitter/playground",
    cmd = "TSPlaygroundToggle",
  },
}
