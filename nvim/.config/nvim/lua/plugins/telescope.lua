return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.1',
	dependencies = {
		'nvim-lua/plenary.nvim',
		'nvim-telescope/telescope-ui-select.nvim',
		"debugloop/telescope-undo.nvim",
	},
	config = function()
		local actions = require("telescope.actions")
		local telescope = require('telescope')

		telescope.setup {
			defaults = {
				mappings = {
					i = {
						["<esc>"] = actions.close
					},
				},
			},
			extensions = {
				undo = {},
			},
		}

		telescope.load_extension('ui-select')
		telescope.load_extension("undo")
	end
}
