local M = {}
local wk = require('which-key')

function M.map(mode, key, fn, opts)
	opts = opts or {}
	vim.keymap.set(mode, key, fn, opts)
	if opts.desc then
		wk.register({ [key] = { fn, opts.desc } })
	end
end

return M
