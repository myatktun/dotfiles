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
