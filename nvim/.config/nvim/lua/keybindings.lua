local map = require('utils').map

map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Buffers
map('n', 'H', ':bprev<CR>')
map('n', 'L', ':bnext<CR>')

-- Plugins
map('n', '<leader>gg', ':LazyGit<CR>')

map('', '<C-d>', '<C-d>zz', { noremap = true })
map('', '<C-u>', '<C-u>zz', { noremap = true })
