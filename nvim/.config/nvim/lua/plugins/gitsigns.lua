return {
	'lewis6991/gitsigns.nvim',
	config = function()
		local gitsigns = require('gitsigns')
		gitsigns.setup({
			signs = {
				untracked = { text = '│' },
			},
			current_line_blame = true,
		})
	end
}
