return {
	"zaldih/themery.nvim",
	lazy = false,
	priority = 1000,
	keys = {
		{ "<leader>ns", "<cmd>Themery<CR>", desc = "Choose Colorscheme" },
	},
	opts = {
		themes = {
			"tokyonight",
			"catppuccin",
			"kanagawa",
			"everforest",
			"gruvbox",
			"vscode",
		},
		livePreview = true,
	},
}
