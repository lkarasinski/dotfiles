local map = require('utils').map
local wk = require('which-key')

------------
-- Groups --
------------

wk.register({
	["<leader>f"] = { name = "File" },
	["<leader>l"] = { name = "LSP" },
	["<leader>n"] = { name = "Notes" },
	["<leader>h"] = { name = "Harpoon" },
	["<leader>g"] = { name = "Git" },
})

--

map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')
map('n', '<F1>', '<Nop>', { silent = true})
map('i', '<F1>', '<Nop>', { silent = true})
map('x', '<F1>', '<Nop>', { silent = true})

-- Buffers
map('n', 'H', ':bprev<CR>')
map('n', 'L', ':bnext<CR>')


map('', '<C-d>', '<C-d>zz', { noremap = true })
map('', '<C-u>', '<C-u>zz', { noremap = true })

---------
-- LSP --
---------

-- Hover diagnostics
map('n', 'K', function()
	vim.lsp.buf.hover()
end, { desc = "Hover diagnostics" })

-- Go to definition
map('n', 'gd', function()
	vim.lsp.buf.definition()
end, { desc = "Go to definition" })

-- Rename symbol
map('', '<leader>lr', function()
	vim.lsp.buf.rename()
end, { desc = "Rename symbol", noremap = true, silent = true })

-- Code actions
map('', '<leader>la', function()
	vim.lsp.buf.code_action()
end, { desc = "Code actions", noremap = true, silent = true })

-- Next diagnostic
map('', '<leader>ln', function()
	vim.diagnostic.goto_next()
end, { desc = "Next diagnostic", noremap = true, silent = true })

-- Previous diagnostic
map('', '<leader>lp', function()
	vim.diagnostic.goto_prev()
end, { desc = "Previous diagnostic", noremap = true, silent = true })

-- Show line diagnostic
map('n', '<leader>ld', function()
	vim.diagnostic.open_float()
end, { desc = "Line diagnostic" })

---------------
-- bufdelete --
---------------

local bufdelete = require('bufdelete')

map('n', '<leader>c', function()
	bufdelete.bufdelete(0)
end, { desc = "Close buffer" })

--------------
-- neo-tree --
--------------

map('n', '<leader>o', ':Neotree toggle<CR>', { desc = "Toggle file explorer" })
map('n', '<leader>e', ':Neotree focus<CR>', { desc = "Focus file explorer" })


---------------
-- Telescope --
---------------

map('n', '<leader>fr', ':Telescope resume<CR>', { desc = "Resume search" })
map('n', '<leader>ff', ':Telescope find_files<CR>', { desc = "Find files" })
map('n', '<leader>u', '<cmd>Telescope undo<cr>', { desc = "Undo Tree" })
map('n', '<leader>fw', ':Telescope live_grep<CR>', { desc = "Find word" })
map('n', '<leader>fb', ':Telescope buffers<CR>', { desc = "Find buffers" })

-----------
-- Neorg --
-----------

map('n', '<leader>nn', ':Neorg<CR>')

-------------
-- harpoon --
-------------

map('n', '<leader>ha', ':lua require("harpoon.mark").add_file()<CR>', { desc = "Add file to harpoon" })
map('n', '<leader>hf', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', { desc = "Toggle quick menu" })
map('n', '<leader>hl', ':lua require("harpoon.ui").nav_next()<CR>', { desc = "Go to next mark" })
map('n', '<leader>hh', ':lua require("harpoon.ui").nav_prev()<CR>', { desc = "Go to previous mark" })

---------
-- git --
---------

map('n', '<leader>gg', ':LazyGit<CR>')
map('n', '<leader>gr', ':lua require("gitsigns").reset_hunk()<CR>', { desc = "Reset hunk" })
map('n', '<leader>gp', ':lua require("gitsigns").preview_hunk()<CR>', { desc = "Preview hunk" })
map('n', '<leader>gs', ':lua require("gitsigns").stage_hunk()<CR>', { desc = "Stage hunk" })
map('n', '<leader>gb', ':lua require("gitsigns").toggle_current_line_blame()<CR>', { desc = "Toggle current line blame" })
map('n', '<leader>gj', ':lua require("gitsigns").next_hunk()<CR>', { desc = "Go to next hunk" })
map('n', '<leader>gk', ':lua require("gitsigns").prev_hunk()<CR>', { desc = "Go to previous hunk" })

--------------
-- Navbuddy --
--------------

map('n', '<C-n>', ":Navbuddy<CR>", { desc = "Open symbol navigation" })

-----------
-- flash --
-----------

map('n', '<C-f>', ":lua require('flash').jump()<CR>", { desc = "Flash" })
map('x', '<C-f>', ":lua require('flash').jump()<CR>", { desc = "Flash" })
map('o', '<C-f>', ":lua require('flash').jump()<CR>", { desc = "Flash" })

