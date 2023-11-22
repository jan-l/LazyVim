-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- don't auto comment new line
vim.api.nvim_create_autocmd("BufEnter", { command = [[set formatoptions-=cro]] })

-- show hidden env files in neotree
vim.api.nvim_create_autocmd("BufRead", {
  callback = function()
    vim.filetype.add({
      filename = {
        [".env"] = "sh",
        [".envrc"] = "sh",
        ["*.env"] = "sh",
        ["*.envrc"] = "sh",
      },
    })
  end,
})

-- Adjust conceallevel for json files
vim.api.nvim_create_autocmd("FileType", {

  pattern = { "json", "jsonc" },
  callback = function()
    vim.wo.spell = false
    vim.wo.conceallevel = 0
  end,
})
-- windows to close with "q"
vim.api.nvim_create_autocmd(
  "FileType",
  { pattern = { "help", "startuptime", "qf", "lspinfo" }, command = [[nnoremap <buffer><silent> q :close<CR>]] }
)

-- show cursor line only in active window
local cursorGrp = vim.api.nvim_create_augroup("CursorLine", { clear = true })
vim.api.nvim_create_autocmd({ "InsertLeave", "WinEnter" }, {
  pattern = "*",
  command = "set cursorline",
  group = cursorGrp,
})
