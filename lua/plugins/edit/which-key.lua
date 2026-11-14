return {
	"folke/which-key.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"nvim-mini/mini.icons",
	},
	event = "VeryLazy",
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show()
			end,
			desc = "Show which-key",
		},
		{
			"<localleader>?",
			function()
				require("which-key").show()
			end,
			desc = "Show which-key",
		},
	},
	opts = {},
}
