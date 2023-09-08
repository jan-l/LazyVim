return {
  {
    "noice.nvim",
    opts = {
      enabled = true,
      cmdline = { view = "cmdline" },
      views = {
        mini = { win_options = { winblend = 0 } },
      },
      presets = {
        lsp_doc_border = true,
        command_palette = false,
      },
      lsp = {
        progress = {
          enabled = true,
        },
      },
      messages = {
        enabled = false,
      },
    },
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      render = "compact",
      stages = "static",
    },
  },
}
