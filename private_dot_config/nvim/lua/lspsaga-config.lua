local status, saga = pcall(require, "lspsaga")
if (not status) then return end

saga.setup({
  ui = {
    winblend = 10,
    border = 'rounded',
  },
  symbol_in_winbar = {
    enable = false
  }
})

local diagnostic = require('lspsaga.diagnostic')
local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

keymap('n', ']g', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
keymap('n', '[g', '<Cmd>Lspsaga diagnostic_jump_prev<CR>', opts)
keymap('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
keymap('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
keymap('n', 'gp', '<Cmd>Lspsaga preview_definition<CR>', opts)
keymap('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
