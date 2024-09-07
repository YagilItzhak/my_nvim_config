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

