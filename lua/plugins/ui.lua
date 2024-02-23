-- show lsp server name in statusline
local function lsp()
  local msg = "No Active Lsp"
  local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
  local clients = vim.lsp.get_active_clients()
  if next(clients) == nil then
    return msg
  end
  for _, client in ipairs(clients) do
    local filetypes = client.config.filetypes
    if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
      return client.name
    end
  end
  return msg
end

return {
  -- statusline
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      sections = {
        -- use default sections but overwrite some
        lualine_a = { { "mode", separator = { left = "" } } },
        lualine_b = { "branch", "diagnostics" },
        lualine_y = { lsp },
        lualine_z = { "progress", "location" },
      },
      options = {
        theme = "auto",
        section_separators = { left = "", right = "" },
        -- component_separators = { left = "", right = "" },
        component_separators = "",
      },
    },
  },
  -- bufferline
  {
    "akinsho/nvim-bufferline.lua",
    -- keys are configured in keymaps.lua
    opts = {
      options = {
        mode = "tabs",
        show_buffer_close_icons = false,
        show_close_icon = false,
      },
    },
  },
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
  -- filename
  {
    "b0o/incline.nvim",
    event = "BufReadPre",
    priority = 1200,
    config = function()
      require("incline").setup({
        highlight = {
          groups = {},
        },
        window = { margin = { vertical = 0, horizontal = 0 } },
        hide = { cursorline = true },
        render = function(props)
          local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
          if vim.bo[props.buf].modified then
            filename = "[+] " .. filename
          end

          local icon, color = require("nvim-web-devicons").get_icon_color(filename)
          return { { icon, guifg = color }, { " " }, { filename } }
        end,
      })
    end,
  },
}
