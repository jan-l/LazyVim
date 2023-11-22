return {
  -- output lsp output to a floating window
  {
    "mhanberg/output-panel.nvim",
    event = "VeryLazy",
    keys = {
      { "<leader>uo", "<cmd>OutputPanel<cr>", desc = "Toggle LSP output" },
    },
    config = true,
  },
  -- run tsc type-checking for the whole project
  {
    "dmmulroy/tsc.nvim",
    config = true,
    cmd = "TSC",
    keys = {
      { "<leader>tc", "<cmd>TSC<cr>", desc = "Type-check" },
    },
  },
}
