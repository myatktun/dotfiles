require('bufferline').setup{
  options = {
    numbers = 'buf_id',
    show_close_icon = false,
    sort_by = 'id',
    separator_style = 'slant',
    diagnostics = "nvim_lsp",
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
