vim.opt.tabstop = 4
vim.opt.expandtab = false
vim.opt.scrolloff = 8
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"

-- Create the undo directory if it doesn't exist
vim.fn.mkdir(vim.fn.expand(os.getenv("HOME") .. "/.nvim/undo"), "p")

-- Enable persistent undo
vim.o.undofile = true
vim.o.undodir = os.getenv("HOME") .. "/.nvim/undo"
