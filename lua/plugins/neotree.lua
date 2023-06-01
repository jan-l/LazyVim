return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      display_name = "Files",
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
        },
      },
      source_selector = {
        winbar = false,
        statusline = false,
        sources = {
          {
            source = "filesystem",
            display_name = "  Files ",
          },
        },
      },
    },
  },
}
