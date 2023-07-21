return {
	'ThePrimeagen/harpoon',
	dependencies = {
		'nvim-lua/plenary.nvim',
	},
	config = function()
		local harpoon = require('gitsigns')
		harpoon.setup({})
	end
}
