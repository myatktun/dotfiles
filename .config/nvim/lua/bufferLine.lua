require('bufferline').setup{
  options = {
    numbers = 'buf_id',
    show_close_icon = false,
    sort_by = 'id',
    separator_style = 'slant',
    diagnostics = "nvim_lsp",
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

