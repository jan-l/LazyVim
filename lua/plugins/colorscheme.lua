return {
  {
    "catppuccin/nvim",
    enabled = true,
    name = "catppuccin",
    opts = {
      flavour = "mocha",
      transparent_background = true,
      integrations = {
        cmp = true,
        dashboard = true,
        gitsigns = true,
        treesitter = true,
        notify = true,
        mini = true,
        harpoon = true,
        indent_blankline = {
          enabled = true,
          color_indented_levels = true,
        },
        neotree = true,
        noice = true,
        treesitter_context = true,
        telescope = true,
        which_key = true,
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
