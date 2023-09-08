return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      close_if_last_window = true,
      -- display_name = "Files",
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          always_show = {
            ".env",
            ".env.local",
            ".npmrc",
          },
        },
      },
      window = {
        position = "right",
      },
      source_selector = {
        winbar = false,
        statusline = false,
        sources = {
          {
            -- source = "filesystem",
            -- display_name = "  Files ",
          },
        },
      },
    },
  },
}
