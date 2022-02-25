local ts = require "nvim-treesitter.configs"
ts.setup {
  context_commentstring = {enable = true},
  ensure_installed = {"bash", "c", "cpp", "css", "html", "javascript", "json", "lua", "python", "scss", "tsx", "typescript", "yaml"},
  highlight = {
    enable = true,
    disable = {"html"},
    additional_vim_regex_highlighting = false
  },
  indent = {enable = true}
}
