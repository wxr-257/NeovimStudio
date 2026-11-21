return {
	"zaldih/themery.nvim",
	lazy = false,
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
