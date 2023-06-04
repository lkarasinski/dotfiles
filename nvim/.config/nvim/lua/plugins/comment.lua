return {
	'numToStr/Comment.nvim',
	config = function()
		local Comment = require('Comment')
		Comment.setup({
			toggler = {
				line = "<leader>/"
			}
		})
	end
}
