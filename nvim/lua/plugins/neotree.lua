return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	opts = {
		window = {
			position = "float",
			popup = {
				size = {
					height = "50%",
					width = "50%",
				},
				position = "50%",
				title = function(state)
					return "Найдётся всё..."
				end,
			},
		},
		default_component_configs = {
			indent = {
				padding = 2,
			},
		},
	},
}
