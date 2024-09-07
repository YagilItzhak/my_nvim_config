local telescope = require('telescope')
telescope.setup{}

-- Telescope key mappings
local map = vim.api.nvim_set_keymap
local options = { noremap = true, silent = true }

map('n', '<leader>ff', '<cmd>Telescope find_files<cr>', options)
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', options)
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>', options)
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', options)

