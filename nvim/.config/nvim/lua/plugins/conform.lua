return {
	'stevearc/conform.nvim',
	opts = {
		lazy = false,
		opts = {
			notify_on_error = false,
		},
	},
	config = function ()
		require("conform").setup({
			format_on_save = function(bufnr)
				print("hello")
				local disable_filetypes = { c = true, cpp = true }
				return {
					timeout_ms = 500,
					lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
				}
			end,
			formatters_by_ft = {
				lua = { 'stylua' },
				typescriptreact = { 'biome-check' },
				javascriptreact = { 'biome-check' },
				typescript = { 'biome-check' },
				javascript = { 'biome-check' },
				json = { 'biome-check' }
			},
		})
	end

}
