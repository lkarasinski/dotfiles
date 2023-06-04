return {
	'akinsho/bufferline.nvim',
	version = "*",
	dependencies = 'nvim-tree/nvim-web-devicons',
	config = function()
		vim.opt.termguicolors = true
		require("bufferline").setup {
			options = {
				diagnostics = "nvim_lsp",
				diagnostics_indicator = function(count, level, diagnostics_dict, context)
					local icon = level:match("error") and " "
					    or level:match("warning") and " "
					    or level:match("info") and " "
					    or level:match("hint") and " "
					    or ""
					return icon .. count
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
