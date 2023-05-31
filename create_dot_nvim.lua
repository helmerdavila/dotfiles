-- Light theme for bat
vim.cmd("let $BAT_THEME='Github'")
-- Dark theme for bat
-- vim.cmd("let $BAT_THEEME='Github'")


-- Underbar themes
-- lua require('lualine').setup { options = { theme = 'onelight' }, }
-- lua require('lualine').setup { options = { theme = 'nightfly' }, }
require('lualine').setup {
  options = {
    theme = 'catppuccin-latte'
  },
}

require('catppuccin').setup {
  flavour = 'latte',
  background = {
    light = 'latte',
    dark = 'frappe',
  }
}

vim.opt.background = "light"
-- vim.opt.background = "dark"


-- Theme: OneHalfLight (Default | Light theme)
-- vim.cmd("colorscheme onehalflight")
--
-- Theme: OneDark (Dark theme)
-- vim.g.onedark_style = 'cool'
-- vim.cmd("colorscheme onedark")
--
-- Theme: Nightfly (Dark Theme)
-- vim.cmd("colorscheme nightfly")
--
-- Theme: Catppuccino (Dark Theme)
-- vim.cmd("colorscheme catppuccin-frappe")
--
-- Theme: Catppuccino (Light Theme)
vim.cmd("colorscheme catppuccin-latte")

vim.opt.clipboard = "unnamed"
