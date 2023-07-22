return {
	'neovim/nvim-lspconfig',
	dependencies = {
		-- Automatically install LSPs to stdpath for neovim
		{ 'williamboman/mason.nvim', config = true },
		'williamboman/mason-lspconfig.nvim',
		-- Useful status updates for LSP
		{
			"j-hui/fidget.nvim",
			tag = "legacy",
			event = "LspAttach",
			opts = {
				-- options
			},
		}
	},
}
