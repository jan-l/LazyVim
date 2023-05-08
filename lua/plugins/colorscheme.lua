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
        disable_italics = true,
        groups = {
          background = p.none,
        },
        highlight_groups = {
          -- Blend colours against the "base" background
          Cursor = { bg = p.rose, fg = p.rose },
          Delimeter = { fg = p.pine, blend = 5 },

          CursorLine = { bg = p.foam, blend = 5 },
          NotifyBackground = { bg = p.nc, fg = p.none },

          NeoTreeGitUntracked = { fg = p.gold },
          NeoTreeFileNameOpened = { fg = p.love },
          -- ["@constructor"] = { fg = p.rose },

          NoiceCmdlinePopupBorder = { fg = p.love },
          NoiceCursor = { bg = p.rose },
          NoiceCmdlineIcon = { fg = p.love },
          NoiceCmdlinePopup = { fg = p.love },
          -- NoiceCmdline = { fg = p.love },
          -- -- NoiceCmdlinePrompt = { fg = p.love, bg = p.love },
          NoiceCompletionItemKindDefault = { fg = p.love },
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
