return {
	{
		"xiyaowong/transparent.nvim",
		config = function()
			local transparent = require("transparent")
			transparent.setup({
				extra_groups = { "NeoTreeNormal", "NeoTreeActive", "NeoTreeInactive",
					"NeoTreeNormalNC", "NavbuddyNormalFloat" },
			})
		end,
	},
}
