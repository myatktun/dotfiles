local options = { noremap = true, silent = true}
local nvim_lsp = require('lspconfig')
vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', options)
vim.api.nvim_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', options)
vim.api.nvim_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', options)
vim.api.nvim_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', options)
vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', options)
vim.api.nvim_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', options)
-- vim.api.nvim_set_keymap('n', '<C-n>', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', options)
-- vim.api.nvim_set_keymap('n', '<C-p>', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', options)

vim.api.nvim_exec([[autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)]], false)
vim.api.nvim_exec([[autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 100)]], false)
vim.api.nvim_exec([[autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)]], false)


local servers = { 'html','cssls','pyright', 'rust_analyzer', 'tsserver' }
for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {
root_dir = function(fname)
    return vim.fn.getcwd() 
end,
      on_attach = on_attach,
      flags = {
        debounce_text_changes = 150,
      }
    }
  end
