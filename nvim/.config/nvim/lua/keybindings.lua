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

---------
-- LSP --
---------

-- Hover diagnostics
map('n', 'K', function()
	vim.lsp.buf.hover()
end)

-- Go to definition
map('n', 'gd', function()
	vim.lsp.buf.definition()
end)

-- Rename symbol
map('', '<F2>', function()
	vim.lsp.buf.rename()
end, { noremap = true, silent = true })

-- Code actions
map('', '<leader>la', function()
	vim.lsp.buf.code_action()
end, { noremap = true, silent = true })

-- Next diagnostic
map('', '<leader>gn', function()
	vim.diagnostic.goto_next()
end, { noremap = true, silent = true })

-- Previous diagnostic
map('', '<leader>gp', function()
	vim.diagnostic.goto_prev()
end, { noremap = true, silent = true })

-- Show line diagnostic
map('n', '<leader>gl', function()
	vim.diagnostic.open_float()
end)

-- Format document
map('n', '<leader>fmt', function()
	vim.lsp.buf.formatting()
end)

--------------
-- neo-tree --
--------------

map('n', '<leader>o', ':Neotree toggle<CR>')
map('n', '<leader>e', ':Neotree focus<CR>')


---------------
-- Telescope --
---------------

map('n', '<leader>fr', ':Telescope resume<CR>')

-----------
-- Neorg --
-----------

map('n', '<leader>fn', ':Neorg<CR>')
