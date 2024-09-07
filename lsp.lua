local on_attach = function(client, bufnr)
  local buf_set_keymap = vim.api.nvim_buf_set_keymap
  local opts = { noremap = true, silent = true }

  -- LSP key mappings
  buf_set_keymap(bufnr, 'n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap(bufnr, 'n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
end

-- LSP Configurations
local lspconfig = require('lspconfig')

lspconfig.clangd.setup{ on_attach = on_attach }
lspconfig.pyright.setup{ on_attach = on_attach }
lspconfig.lua_ls.setup{ on_attach = on_attach }
lspconfig.emmet_ls.setup{
  on_attach = on_attach, -- Use the same on_attach function from your existing LSP config
  filetypes = { 'html', 'css', 'typescriptreact', 'javascriptreact', 'scss', 'sass', 'less', 'vue' },
}

-- Mason setup
require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = { 'pyright', 'clangd', 'lua_ls' },
  automatic_installation = true,
})

