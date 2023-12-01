local ts = require "nvim-treesitter.configs"
require("ts_context_commentstring").setup{}
vim.g.skip_ts_context_commentstring_module = true
ts.setup {
    ensure_installed = { "bash", "c", "cpp", "css", "html", "java", "javascript", "json", "lua", "python", "scss", "tsx",
        "typescript", "vim", "yaml" },
    autopairs = {
        enable = true
    },
    highlight = {
        enable = true,
        disable = { "html" },
        additional_vim_regex_highlighting = false
    },
    indent = { enable = true }
}
