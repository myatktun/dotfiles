require('lualine').setup {
  options = {
    theme = 'gruvbox_dark',
    globalstatus = true,
    component_separators = {left = '|', right = '|'},
    section_separators = {left = ' ', right = ' '}
  },
  sections = {
    lualine_c = {{'filename',path = 2}},
    lualine_z = {'location', '%L'}
  },
  -- tabline = {
  --   lualine_a = {{'buffers', show_filename_only = true, show_modified_status = true, mode = 2, filetype_names = { NvimTree = ''}}},
  --   lualine_z = {'tabs'}
  -- },
}
