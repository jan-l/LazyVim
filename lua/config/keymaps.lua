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

-- Move lines in visual mode
map("v", "J", ":m '>+1<cr>gv=gv", { desc = "Move down" })
map("v", "K", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- Bufferline "tabs"
if Util.has("bufferline.nvim") then
  map("n", "<Tab>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
  map("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Previous buffer" })
end

-- search and replace word
map(
  "n",
  "<leader>r",
  [[>:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Search and replace word in buffer" }
)
-- quick exit insert
map("i", "jk", "<esc>", { desc = "Exit insert mode" })
-- better scrolling with centered cursor
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- remap eol for nordic keyboard layout
map("n", "€", "$")

-- paste over currently selected text without yanking it
map("v", "p", '"_dp')
map("v", "P", '"_dP')

-- open projects with telescope
if Util.has("project.nvim") then
  map("n", "<leader>fP", "<cmd>Telescope projects<cr>", { desc = "Open projects" })
end

-- Move to start/end of line
map("n", "H", "^")
map("n", "L", "$")

-- Remove default lazy keymap to create more keymaps under leader+l
vim.keymap.del("n", "<leader>l")
map("n", "<leader>ll", ":Lazy<CR>")
map("n", "<leader>lr", ":LspRestart<CR>")
-- harpoon
map("n", "<leader>hl", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", { desc = "Show Harpoon" })
map("n", "<leader>h1", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", { desc = "Harpoon Buffer 1" })
map("n", "<leader>h2", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", { desc = "Harpoon Buffer 2" })
map("n", "<leader>h3", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", { desc = "Harpoon Buffer 3" })
map("n", "<leader>h4", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", { desc = "Harpoon Buffer 4" })
map("n", "<leader>h5", "<cmd>lua require('harpoon.ui').nav_file(5)<cr>", { desc = "Harpoon Buffer 5" })
map("n", "<leader>h6", "<cmd>lua require('harpoon.ui').nav_file(6)<cr>", { desc = "Harpoon Buffer 6" })
map("n", "<leader>h7", "<cmd>lua require('harpoon.ui').nav_file(7)<cr>", { desc = "Harpoon Buffer 7" })
map("n", "<leader>h8", "<cmd>lua require('harpoon.ui').nav_file(8)<cr>", { desc = "Harpoon Buffer 8" })
map("n", "<leader>h9", "<cmd>lua require('harpoon.ui').nav_file(9)<cr>", { desc = "Harpoon Buffer 9" })
map("n", "<leader>ha", "<cmd>lua require('harpoon.mark').add_file()<cr>", { desc = "Add to Harpoon" })
map("n", "<leader>hr", "<cmd>lua require('harpoon.mark').rm_file()<cr>", { desc = "Remove from Harpoon" })
map("n", "<leader>hn", "<cmd>lua require('harpoon.ui').nav_next()<cr>", { desc = "Next Harpoon buffer" })
map("n", "<leader>hp", "<cmd>lua require('harpoon.ui').nav_prev()<cr>", { desc = "Prev Harpoon buffer" })
