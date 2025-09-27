return {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate",
    require("ts_context_commentstring").setup{},
    config = function()
        require("nvim-treesitter.configs").setup({
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
        })
    end
}
