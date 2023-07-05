return {
	"nvim-neorg/neorg",
	build =  ":Neorg sync-parsers",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function ()
		local neorg = require("neorg")
		neorg.setup({
			load = {
				["core.defaults"] = {},
				["core.concealer"] = {},
				["core.dirman"] = {
					config = {
						workspaces = {
							notes = "~/notes",
						},
						default_workspace = "notes",
					}
				},
			}
		})
	end,
}
