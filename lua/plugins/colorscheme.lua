return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    config = function()
      local p = require("rose-pine.palette")
      require("rose-pine").setup({
        variant = "moon",
        disable_background = true,
        disable_float_background = true,
        groups = {
          background = p.none,
        },
        highlight_groups = {
          -- Blend colours against the "base" background
          CursorLine = { bg = p.foam, blend = 10 },
          -- StatusLine = { fg = p.love, bg = p.love, blend = 100 },
          NotifyBackground = { bg = p.nc, fg = p.none },
        },
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
  },
}
