return {
  {
    "noice.nvim",
    opts = {
      enabled = true,
      -- cmdline = { view = "cmdline" },
      views = {
        mini = { win_options = { winblend = 0 } },
        -- cmdline_popup = {
        --   border = {
        --     style = "none",
        --     padding = { 1, 2 },
        --   },
        -- },
        -- win_options = {
        --   winhighlight = "NormalFloat:NormalFloat, FloatBorder:FloatBorder",
        -- },
      },
      presets = {
        lsp_doc_border = true,
      },
    },
  },
}
