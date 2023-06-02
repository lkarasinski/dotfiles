local M = {}

function M.map(mode, lhs, rhs, opts)
	opts = opts or {}
	vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
end

return M
