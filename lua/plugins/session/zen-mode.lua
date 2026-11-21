return {
	"folke/zen-mode.nvim",
	cmd = "ZenMode",
	keys = {
		{ "<leader>nz", "<cmd>ZenMode<cr>", desc = "Toggle zen mode" },
	},
	opts = {
		window = {
			width = 0.85,
			backdrop = 0.95,
		},
		plugins = {
			options = {
				ruler = false,
				showcmd = false,
				laststatus = 0,
				showtabline = 0,
			},
		},
	},
}
