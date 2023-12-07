-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.cmd([[
  noremap <silent> <c-h> :<C-U>TmuxNavigateLeft<cr>
  noremap <silent> <c-j> :<C-U>TmuxNavigateDown<cr>
  noremap <silent> <c-k> :<C-U>TmuxNavigateUp<cr>
  noremap <silent> <c-l> :<C-U>TmuxNavigateRight<cr>
  noremap <silent> <c-\> :<C-U>TmuxNavigatePrevious<cr>
]])

local Util = require("lazyvim.util")

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end
-- do not yank normal mode x remove
map("n", "x", '"_x', { desc = "which_key_ignore" })

-- quick exit insert
map("i", "jk", "<esc>", { desc = "Exit insert mode" })

-- Move to start/end of line
map("n", "H", "^", { desc = "which_key_ignore" })
map("n", "L", "$", { desc = "which_key_ignore" })

-- paste over currently selected text without yanking it
map("v", "p", '"_dp', { desc = "which_key_ignore" })
map("v", "P", '"_dP', { desc = "which_key_ignore" })

-- better scrolling with centered cursor
map("n", "<C-d>", "<C-d>zz", { desc = "which_key_ignore" })
map("n", "<C-u>", "<C-u>zz", { desc = "which_key_ignore" })

-- Move lines in visual mode
map("v", "J", ":m '>+1<cr>gv=gv", { desc = "Move down" })
map("v", "K", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- window
map("n", "ss", ":split<CR>", { silent = true, desc = "Split window" })
map("n", "sv", ":vsplit<CR>", { silent = true, desc = "Split vertical vindow" })

-- search and replace word
map(
  "n",
  "<leader>r",
  [[>:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Search and replace word in buffer" }
)

-- git
map("n", "<leader>gb", '<cmd>lua require("git.blame").blame()<cr>', { desc = "Blame file" })
map("n", "<leader>go", '<cmd>lua require("git.browse").open(false)<cr>', { desc = "Go to repository" })

-- Bufferline "tabs"
if Util.has("bufferline.nvim") then
  map("n", "<Tab>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
  map("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Previous buffer" })
end

vim.keymap.set("n", "<c-_>", "<c-/>", { remap = true, desc = "which_key_ignore" })
vim.keymap.set("t", "<c-_>", "<c-/>", { remap = true, desc = "which_key_ignore" })
-- add LSP restart under leader l, move lazy to leader ll
vim.keymap.del("n", "<leader>l")
map("n", "<leader>ll", ":Lazy<CR>")
map("n", "<leader>lr", ":LspRestart<CR>")

-- harpoon
map("n", "<leader>hl", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", { desc = "Show Harpoon" })
map("n", "<leader>ha", "<cmd>lua require('harpoon.mark').add_file()<cr>", { desc = "Add to Harpoon" })
map("n", "<leader>hr", "<cmd>lua require('harpoon.mark').rm_file()<cr>", { desc = "Remove from Harpoon" })
map("n", "<leader>hn", "<cmd>lua require('harpoon.ui').nav_next()<cr>", { desc = "Next Harpoon buffer" })
map("n", "<leader>hp", "<cmd>lua require('harpoon.ui').nav_prev()<cr>", { desc = "Prev Harpoon buffer" })
map("n", "<leader>hj", "<cmd>lua require('harpoon.ui').nav_next()<cr>", { desc = "Next Harpoon buffer" })
map("n", "<leader>hk", "<cmd>lua require('harpoon.ui').nav_prev()<cr>", { desc = "Prev Harpoon buffer" })
map("n", "<leader>hh", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", { desc = "Show Harpoon" })
-- harpoon buffers by number
map("n", "<leader>h1", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", { desc = "Harpoon Buffer 1" })
map("n", "<leader>h2", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", { desc = "Harpoon Buffer 2" })
map("n", "<leader>h3", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", { desc = "Harpoon Buffer 3" })
map("n", "<leader>h4", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", { desc = "Harpoon Buffer 4" })
map("n", "<leader>h5", "<cmd>lua require('harpoon.ui').nav_file(5)<cr>", { desc = "Harpoon Buffer 5" })
map("n", "<leader>h6", "<cmd>lua require('harpoon.ui').nav_file(6)<cr>", { desc = "Harpoon Buffer 6" })
map("n", "<leader>h7", "<cmd>lua require('harpoon.ui').nav_file(7)<cr>", { desc = "Harpoon Buffer 7" })
map("n", "<leader>h8", "<cmd>lua require('harpoon.ui').nav_file(8)<cr>", { desc = "Harpoon Buffer 8" })
map("n", "<leader>h9", "<cmd>lua require('harpoon.ui').nav_file(9)<cr>", { desc = "Harpoon Buffer 9" })
