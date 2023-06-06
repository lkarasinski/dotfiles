return {
	'VidocqH/lsp-lens.nvim',
	config = function()
		local lens = require('lsp-lens')
		lens.setup({
			enable = true,
		})
	end
}
