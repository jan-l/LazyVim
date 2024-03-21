return {
  -- telescope config extends Lazyvim telescope config
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<leader>sf",
        function()
          local builtin = require("telescope.builtin")
          builtin.find_files({
            no_ignore = false,
            hidden = true,
          })
        end,
      },
      {
        ";r",
        function()
          local builtin = require("telescope.builtin")
          builtin.live_grep()
        end,
      },
      {
        ";t",
        function()
          local builtin = require("telescope.builtin")
          builtin.help_tags()
        end,
      },
    },
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "bottom" },
        sorting_strategy = "descending",
        winblend = 0,
        mappings = {
          i = {
            ["<C-j>"] = require("telescope.actions").move_selection_next, -- move to next result
            ["<C-k>"] = require("telescope.actions").move_selection_previous, -- move to prev result
            ["<C-q"] = require("telescope.actions").send_selected_to_qflist + require("telescope.actions").open_qflist,
          },
        },
      },
    },
  },
  -- file tree
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      close_if_last_window = true,
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          always_show = {
            ".env",
            ".env.local",
            ".npmrc",
          },
        },
      },
      window = {
        position = "right",
      },
    },
  },
  -- symbols outline
  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
    keys = {
      { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" },
    },
    config = true,
  },
  {
    -- harpoon
    "ThePrimeagen/harpoon",
    dependencies = "nvim-lua/plenary.nvim",
    opts = {
      global_settings = { mark_branch = true },
      width = vim.api.nvim_win_get_width(0) - 4,
    },
  },
  {
    -- which key config
    "folke/which-key.nvim",
    opts = {
      defaults = {
        ["<leader>l"] = { name = "+lsp/lazy" },
        ["<leader>h"] = { name = "+harpoon" },
        ["<leader>t"] = { name = "+test/typescript" },
        ["<leader>n"] = { name = "+neogen" },
      },
    },
  },
  {
    "folke/flash.nvim",
    enabled = false,
  },
  -- git blame file lines and open file in git repository (browser)
  {
    "dinhhuy258/git.nvim",
    event = "BufReadPre",
    opts = {
      default_mappings = false,
    },
  },
  {
    "sindrets/diffview.nvim",
    opts = {},
  },
  {
    "folke/zen-mode.nvim",
    opts = {},
  },
  {
    "epwalsh/obsidian.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    opts = {
      workspaces = {
        {
          name = "Personal",
          path = "~/Documents/Notes",
        },
        {
          name = "Work",
          path = "~/Documents/Vaisala/Vaisala/",
        },
      },
    },
  },
}
