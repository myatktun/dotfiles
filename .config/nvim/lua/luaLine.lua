require('lualine').setup {
  options = {
    theme = 'gruvbox_dark'
  },
  lualine_c = {{'filename',path = 2}},
  lualine_z = {'location', '%L'}
}
