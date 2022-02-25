require('lualine').setup {
  options = {
    theme = 'gruvbox_dark'
  },
  sections = {
    lualine_c = {{'filename',path = 2}},
    lualine_z = {'location', '%L'}
  }
}
