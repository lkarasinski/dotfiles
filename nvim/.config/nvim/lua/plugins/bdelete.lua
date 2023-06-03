return {
	"famiu/bufdelete.nvim",
	config = function()
		local map = require('utils').map
		local bufdelete = require('bufdelete')

		map('n', '<leader>c', function() bufdelete.bufdelete(0) end)
	end
}
