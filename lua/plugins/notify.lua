return {
  {
    "noice.nvim",
    opts = {
      enabled = true,
      routes = {
        {
          filter = { event = "notify", find = "No information available" },
          opts = { skip = true },
        },
      },
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
