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

          CursorLine = { bg = p.foam, blend = 10 },
          NotifyBackground = { bg = p.nc, fg = p.none },

          NeoTreeGitUntracked = { fg = p.gold },
          NeoTreeFileNameOpened = { fg = p.love },
          -- ["@constructor"] = { fg = p.rose },

          NoiceCmdlinePopupBorder = { fg = p.love },
          NoiceCursor = { bg = p.rose, blend = 50 },
          NoiceCmdlineIcon = { fg = p.rose, blend = 50 },
          NoiceCmdlinePopup = { fg = p.love },
          -- NoiceCmdline = { fg = p.love },
          -- -- NoiceCmdlinePrompt = { fg = p.love, bg = p.love },
          NoiceCompletionItemKindDefault = { fg = p.love },
        },
      })
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    opts = {
      compile = true,
      commentStyle = { italic = true },
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none",
            },
          },
        },
      },
      overrides = function(colors)
        local theme = colors.theme
        return {
          -- NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none" },
          FloatTitle = { bg = "none" },
          NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

          TelescopeTitle = { fg = theme.ui.special, bold = true },
          TelescopePromptNormal = { bg = theme.ui.bg_p1 },
          TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
          TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
          TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
          TelescopePreviewNormal = { bg = theme.ui.bg_dim },
          TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },

          Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 },
          PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
          PmenuSbar = { bg = theme.ui.bg_m1 },
          PMenuThmub = { bg = theme.ui.bg_p2 },
        }
      end,
    },
  },
  {
    "ellisonleao/gruvbox.nvim",
  },
  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    opts = {
      style = "moon",
      transparent = true,
      styles = {
        floats = "transparent",
        sidebars = "transparent",
      },
    },
  },
  { "catppuccin/nvim", name = "catppuccin", opts = {
    flavour = "frappe",
  } },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
  },
}
