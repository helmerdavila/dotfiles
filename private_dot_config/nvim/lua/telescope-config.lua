require('telescope').setup {
  defaults = {
    file_ignore_patterns = {"node_modules", ".git"}
  },
  pickers = {
    buffers = {
      initial_mode = "normal"
    }
  }
}
