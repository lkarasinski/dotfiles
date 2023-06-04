return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"debugloop/telescope-undo.nvim",
	},
	config = function()
		local telescope = require('telescope')
		local map = require('utils').map
		telescope.setup({
			extensions = {
				undo = {},
			},
		})
		telescope.load_extension("undo")
		map('n', '<leader>u', '<cmd>Telescope undo<cr>')
	end,
}
