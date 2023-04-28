return {
  {
    "alexghergh/nvim-tmux-navigation",
    keys = {
      {
        "<C-Left>",
        function()
          require("nvim-tmux-navigation").NvimTmuxNavigateLeft()
        end,
        desc = "Move left",
      },
      {
        "<C-Right>",
        function()
          require("nvim-tmux-navigation").NvimTmuxNavigateRight()
        end,
        desc = "Move right",
      },
      {
        "<C-Down>",
        function()
          require("nvim-tmux-navigation").NvimTmuxNavigateDown()
        end,
        desc = "Move down",
      },
      {
        "<C-Up>",
        function()
          require("nvim-tmux-navigation").NvimTmuxNavigateUp()
        end,
        desc = "Move up",
      },
    },
  },
}
