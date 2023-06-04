local status, telescope = pcall(require, "telescope")
if (not status) then return end
local actions = require('telescope.actions')
local builtin = require('telescope.builtin')

local keymap = vim.keymap

keymap.set("n", "<leader>o", builtin.find_files)
keymap.set("n", "<leader>q", builtin.buffers)
keymap.set("n", "<leader>p", builtin.live_grep)
keymap.set("n", "<leader>f", builtin.current_buffer_fuzzy_find)
keymap.set("n", "<leader>a", builtin.commands)
keymap.set("n", "<leader>m", builtin.marks)
keymap.set("n", "<leader>e", builtin.treesitter)
keymap.set("n", "<leader>gs", builtin.git_status)

telescope.setup {
  defaults = {
    border = {},
    borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
    entry_prefix = "  ",
    file_ignore_patterns = {"node_modules", ".git"},
    layout_config = {
      horizontal = {
        prompt_position = "top",
        preview_width = 0.55,
        results_width = 0.8,
      },
      vertical = {
        mirror = false,
      },
      width = 0.87,
      height = 0.80,
      preview_cutoff = 120,
    },
    layout_strategy = "horizontal",
    mappings = {
      n = {
        ["q"] = actions.close,
        ["<leader>1"] = actions.select_tab,
        ["<leader>2"] = actions.select_vertical,
        ["<leader>3"] = actions.select_horizontal,
      },
    },
    path_display = { "truncate" },
    prompt_prefix = "   ",
    selection_caret = "  ",
    set_env = { ["COLORTERM"] = "truecolor" },
    sorting_strategy = "ascending",
    vimgrep_arguments = {
      "rg",
      "-L",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
    },
    winblend = 0,
  },
  pickers = {
    buffers = {
      initial_mode = "normal"
    },
    find_files = {
      hidden = true,
    },
    git_status = {
      initial_mode = "normal",
    }
  }
}

