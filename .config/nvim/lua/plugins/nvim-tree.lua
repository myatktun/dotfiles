return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
            view = {
                side = "right",
                width = {
                    min = 30,
                }
            },
            renderer = {
                indent_markers = {
                    enable = true
                },
                highlight_opened_files = "all",
                indent_width = 4,
            }
        })
  end,
}
