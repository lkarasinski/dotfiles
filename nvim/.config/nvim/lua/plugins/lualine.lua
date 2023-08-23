return {
	'nvim-lualine/lualine.nvim',
	dependencies = {
		'nvim-tree/nvim-web-devicons',
	},
	config = function()
		local lualine = require('lualine')

		lualine.setup {
			options = {
				disabled_filetypes = { "neo-tree" }
			},
			sections = {
				lualine_c = {
					{
						function()
							local output = vim.fn.system('git diff master | diffstat -s')

							local insertions = tonumber(output:match('(%d+) insertions'))
							local deletions = tonumber(output:match('(%d+) deletions'))

							local green = '%#DiffAdd#'
							local red = '%#DiffDelete#'

							return green ..
							" " ..
							(insertions or 0) .. " " .. red .. "  " .. (deletions or 0) .." "
						end
					}
				}
			}
		}
	end,
}
