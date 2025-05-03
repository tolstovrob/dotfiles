local function header()
	return {
		"",
		"",
		"",
		"",
		"",
		"",
		"",
		"████████╗ ██████╗ ██╗     ███████╗████████╗ ██████╗ ██╗   ██╗██████╗  ██████╗ ██████╗",
		" ╚══██╔══╝██╔═══██╗██║     ██╔════╝╚══██╔══╝██╔═══██╗██║   ██║██╔══██╗██╔═══██╗██╔══██╗",
		"    ██║   ██║   ██║██║     ███████╗   ██║   ██║   ██║██║   ██║██████╔╝██║   ██║██████╔╝",
		"    ██║   ██║   ██║██║     ╚════██║   ██║   ██║   ██║╚██╗ ██╔╝██╔══██╗██║   ██║██╔══██╗",
		"    ██║   ╚██████╔╝███████╗███████║   ██║   ╚██████╔╝ ╚████╔╝ ██║  ██║╚██████╔╝██████╔╝",
		"    ╚═╝    ╚═════╝ ╚══════╝╚══════╝   ╚═╝    ╚═════╝   ╚═══╝  ╚═╝  ╚═╝ ╚═════╝ ╚═════╝ ",
		"",
		"",
		"",
	}
end

return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	config = function()
		require("dashboard").setup({
			theme = "doom", -- theme is doom and hyper default is hyper
			shortcut_type = "letter", -- shortcut type 'letter' or 'number'
			hide = {
				statusline = false, -- hide statusline default is true
				tabline = false, -- hide the tabline
				winbar = false, -- hide winbar
			},
			config = {
				header = header(),
				center = {
					{
						icon = "󰙅 ",
						icon_hl = "Directory",
						desc = "Open tree",
						desc_hl = "String",
						key = "f",
						keymap = "SPC f",
						key_hl = "Number",
						action = ":Neotree float",
					},
					{
						icon = "󰈞 ",
						icon_hl = "Directory",
						desc = "Find files",
						desc_hl = "String",
						key = "lf",
						keymap = "SPC lf",
						key_hl = "Number",
						action = ":Telescope find_files",
					},
					{
						icon = " ",
						icon_hl = "Directory",
						desc = "Which key",
						desc_hl = "String",
						key = "NULL",
						keymap = "SPC",
						key_hl = "Number",
					},
					{
						icon = " ",
						icon_hl = "Directory",
						desc = "Find text",
						desc_hl = "String",
						key = "lg",
						keymap = "SPC lg",
						key_hl = "Number",
						action = ":Telescope live_grep",
					},
					{
						icon = " ",
						icon_hl = "Directory",
						desc = "Git Braches",
						desc_hl = "String",
						key = "b",
						keymap = "SPC g b",
						key_hl = "Number",
						action = ":Telescope git_branches",
					},
					{
						icon = "󰊳 ",
						icon_hl = "Directory",
						desc = "Update",
						desc_hl = "String",
						action = "Lazy update",
						key = "u",
						key_hl = "Number",
					},
				},
			},
		})
	end,
	dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
