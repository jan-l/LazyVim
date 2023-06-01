return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "windwp/nvim-ts-autotag",
    },
    opts = {
      ensure_installed = {
        "bash",
        "dockerfile",
        "css",
        "scss",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "query",
        "regex",
        "rust",
        "tsx",
        "typescript",
        -- "prismals",
        "toml",
        "vim",
        "yaml",
      },
      autotag = {
        enable = true,
      },
    },
  },
  {
    "nvim-treesitter/playground",
  },
}
