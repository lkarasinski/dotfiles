return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.1',
	dependencies = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope-ui-select.nvim' },
	config = function()
		local map = require('utils').map
		local builtin = require('telescope.builtin')
		local actions = require("telescope.actions")
		local telescope = require('telescope')

		telescope.setup {
			defaults = {
				mappings = {
					i = {
						["<esc>"] = actions.close
					},
				},
			}
		}

		telescope.load_extension('ui-select')


		-- Map <leader>ff to Telescope's find_files
		map('n', '<leader>ff', function()
			builtin.find_files({})
		end)

		-- Map <leader>fg to Telescope's live_grep
		map('n', '<leader>fw', function()
			builtin.live_grep({})
		end)

		-- Map <leader>fb to Telescope's buffers
		map('n', '<leader>fb', function()
			builtin.buffers({})
		end)

		-- Map <leader>fh to Telescope's help_tags
		map('n', '<leader>fh', function()
			builtin.help_tags({})
		end)

		-- Map <leader>fh to Telescope's help_tags
		map('n', '<leader>fa', function()
			builtin.find_files({ hidden = true })
		end)
	end
}
