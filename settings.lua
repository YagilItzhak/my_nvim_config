-- Basic Neovim settings
vim.opt.relativenumber = true
vim.opt.number = true
-- Apply Nord theme
-- Ensure packer is loaded before applying colorscheme
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd User PackerComplete ++once lua vim.cmd("colorscheme nord")
  augroup end
]]
vim.opt.termguicolors = true

-- Autocomplete setup
local cmp = require('cmp')

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body) -- Use LuaSnip for snippets
    end,
  },
  mapping = {
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Confirm completion
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' }, -- Snippets source
  }, {
    { name = 'buffer' },
  })
})

-- Set up command-line completion
cmp.setup.cmdline('/', {
  sources = {
    { name = 'buffer' }
  }
})

cmp.setup.cmdline(':', {
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})

