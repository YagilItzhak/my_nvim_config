-- Key mappings for Neovim
local map = vim.api.nvim_set_keymap
local options = { noremap = true, silent = true }

-- Example key mappings
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>', options)
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', options)
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>', options)
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', options)

-- Flow.nvim key mappings
map('v', '<leader>r', ':FlowRunSelected<CR>', options)
map('n', '<leader>rr', ':FlowRunFile<CR>', options)
map('n', '<leader>rt', ':FlowLauncher<CR>', options)
map('n', '<leader>rp', ':FlowRunLastCmd<CR>', options)
map('n', '<leader>ro', ':FlowLastOutput<CR>', options)
-- Keymaps for C/C++ (LSP)
vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', { noremap = true })

-- Example keybinding to compile C/C++ files
vim.api.nvim_set_keymap('n', '<leader>cc', ':!gcc % -o %< && ./%<<CR>', { noremap = true })

