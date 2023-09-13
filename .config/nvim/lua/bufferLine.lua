require('bufferline').setup {
  options = {
    mode = "buffers",
    numbers = 'buf_id',
    close_command = "bdelete! %d",
    right_mouse_command = "bdelete! %d",
    left_mouse_command = "buffer %d",
    middle_mouse_command = nil,
    indicator_icon = '|',
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    max_name_length = 18,
    max_prefix_length = 15,
    tab_size = 18,
    diagnostics = "nvim_lsp",
    offsets = {
      {
        filetype = 'NvimTree',
        text = ' File Explorer',
        highlight = 'Directory',
        text_align = 'center',
      },
    },
    color_icons = true,
    show_buffer_icons = true,
    show_buffer_close_icons = true,
    show_close_icon = false,
    show_tab_indicators = true,
    persist_buffer_sort = true,
    separator_style = "thick",
    enforce_regular_tabs = false,
    always_show_bufferline = true,
    sort_by = 'id',
    -- custom_filter = function (buf,buf_nums)
    --   local current_tab = vim.api.nvim_get_current_tabpage()
    --   local tab_buffers = vim.fn.tabpagebuflist(current_tab)
    --   -- local function tablelength(T)
    --   --   local count = 0
    --   --   for _ in pairs(T) do count = count + 1 end
    --   --   return count
    --   -- end
    --   -- print(tablelength(buf_nums))
    --   -- local s = ""
    --   -- for i, value in ipairs(buf_nums) do
    --   --   s = s .. " key: " .. i .. " value: " .. value
    --   -- end
    --   -- print(s)
    --   return vim.tbl_contains(tab_buffers, buf)
    -- end,
  }
}
