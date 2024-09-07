
local status_ok, packer = pcall(require, 'packer')
if not status_ok then return end

-- Configure packer to use a popup window
packer.init({
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'rounded' })
    end,
  },
})

-- Plugins
packer.startup(function(use)
  -- Plugin manager
  use 'wbthomason/packer.nvim'
  
  -- LSP and completion plugins
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'L3MON4D3/LuaSnip'
  use  {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' }
  }

  -- Additional plugins
  use 'ThePrimeagen/vim-be-good'
  use 'arjunmahishi/flow.nvim'

  -- Emmet Language Server for web development
  use {
    'aca/emmet-ls',
    config = function()
      -- Add custom configuration here, if needed
    end
  }

  -- Nord Theme
  use 'arcticicestudio/nord-vim'

  -- Theme: Gruvbox (optional fallback)
  use {
    'ellisonleao/gruvbox.nvim',
    requires = { 'rktjmp/lush.nvim' }
  }

  -- Apply colorscheme after plugins load
  vim.cmd([[colorscheme nord]])
end)

