-- Auto-install packer.nvim if not already installed
local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packadd packer.nvim'
end

-- Set space as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

package.path = package.path .. ';/Users/yagilitzhak/.config/nvim/?.lua'

-- Load individual config files
require('settings')       -- General settings
require('keymaps')        -- Key mappings
require('plugins')        -- Plugin management and setup
require('lsp')            -- LSP configurations
require('telescope')      -- Telescope key mappings and settings
require('flow')           -- Flow.nvim settings (adjusted for your setup)
