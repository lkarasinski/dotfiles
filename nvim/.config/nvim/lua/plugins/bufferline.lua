return {
	'akinsho/bufferline.nvim',
	version = "*",
	dependencies = 'nvim-tree/nvim-web-devicons',
	config = function()
		vim.opt.termguicolors = true
		require("bufferline").setup {
			options = {
				diagnostics = "nvim_lsp",
				diagnostics_indicator = function(count, level)
					local icon = level:match("error") and " " or ""
					return " " .. icon
				end,
				offsets = {
					{
						filetype = "neo-tree",
						text = "Files",
						highlight = "Directory",
						separator = true -- use a "true" to enable the default, or set your own character
					}
				}
			}
		}
	end
}
