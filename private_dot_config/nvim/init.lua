-- Load vimplug
vim.cmd("let plug_home = stdpath('data') . '/plugged'")

vim.cmd("source ~/.vimrc")

-- Custom settings
require("custom")

vim.opt.inccommand = split

-- Neovim ~/.config/nvim/lua/*.lua files
require("nvim-tree-config")
require("lualine-config")
require("telescope-config")
require("lsp-config")
require("nvim-treesitter-config")
require("bufferline-config")
require("lspsaga-config")

-- Only plugin setup that doesn't need a file
require("zen-mode").setup()

vim.keymap.set("n", "<leader>z", ":ZenMode<CR>")
