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


