-- This config should be at the top of your vimrc or init.vim
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local function custom_on_attach(bufnr)
  local tree_api = require("nvim-tree.api")
  local keymap = vim.keymap

  -- Start all default mappings
  tree_api.config.mappings.default_on_attach(bufnr)

  -- Keymaps
  keymap.set("n", "<leader>nn", ":NvimTreeToggle<CR>", {noremap = true, silent = true})
  keymap.set("n", "<leader>nr", ":NvimTreeRefresh<CR>", {noremap = true, silent = true})
  keymap.set("n", "<leader>nf", ":NvimTreeFindFile<CR>", {noremap = true, silent = true})
  keymap.set("n", "<leader>1", tree_api.node.open.tab, {noremap = true, silent = true})
  keymap.set("n", "<leader>2", tree_api.node.open.horizontal, {noremap = true, silent = true})
  keymap.set("n", "<leader>3", tree_api.node.open.vertical, {noremap = true, silent = true})
end

require"nvim-tree".setup {
  sort_by = 'case_sensitive',
  renderer = {
    group_empty = true,
    root_folder_label = false,
  },
  view = {
    relativenumber = true,
    width = 40,
  },
  open_on_tab = true,
  on_attach = custom_on_attach,
}

-- Close nvim tree when closing last buffer in tab
local function tab_win_closed(winnr)
  local api = require"nvim-tree.api"
  local tabnr = vim.api.nvim_win_get_tabpage(winnr)
  local bufnr = vim.api.nvim_win_get_buf(winnr)
  local buf_info = vim.fn.getbufinfo(bufnr)[1]
  local tab_wins = vim.tbl_filter(function(w) return w~=winnr end, vim.api.nvim_tabpage_list_wins(tabnr))
  local tab_bufs = vim.tbl_map(vim.api.nvim_win_get_buf, tab_wins)
  if buf_info.name:match(".*NvimTree_%d*$") then            -- close buffer was nvim tree
    -- Close all nvim tree on :q
    if not vim.tbl_isempty(tab_bufs) then                      -- and was not the last window (not closed automatically by code below)
      api.tree.close()
    end
  else                                                      -- else closed buffer was normal buffer
    if #tab_bufs == 1 then                                    -- if there is only 1 buffer left in the tab
      local last_buf_info = vim.fn.getbufinfo(tab_bufs[1])[1]
      if last_buf_info.name:match(".*NvimTree_%d*$") then       -- and that buffer is nvim tree
        vim.schedule(function ()
          if #vim.api.nvim_list_wins() == 1 then                -- if its the last buffer in vim
            vim.cmd "quit"                                        -- then close all of vim
          else                                                  -- else there are more tabs open
            vim.api.nvim_win_close(tab_wins[1], true)             -- then close only the tab
          end
        end)
      end
    end
  end
end

vim.api.nvim_create_autocmd("WinClosed", {
  callback = function ()
    local winnr = tonumber(vim.fn.expand("<amatch>"))
    vim.schedule_wrap(tab_win_closed(winnr))
  end,
  nested = true
})
