require('bufferline').setup{
  options = {
    numbers = 'buf_id',
    show_close_icon = false,
    sort_by = 'id',
    separator_style = 'slant',
    diagnostics = "nvim_lsp",
    -- custom_filter = function(buf, buf_nums)
    --   -- get the current tab page number
    --   local tab = vim.fn.tabpagenr()
    --   local current_tab = vim.api.nvim_get_current_tabpage()
    --   print(tab, current_tab)
    --   -- get a list of buffers for a specific tab
    --   local tab_buffers = vim.fn.tabpagebuflist(current_tab)
    --   -- check if the current buffer is being viewed in the current tab
    --   return vim.tbl_contains(tab_buffers, buf)
    -- end,
    offsets = {
      {
        filetype = 'NvimTree',
        text = ' File Explorer',
        highlight = 'Directory',
        text_align = 'center',
      },
    },
  }
}
