return {
	"petertriho/nvim-scrollbar",
	branch = "refactor/v2",
	dependencies = {
		"lewis6991/gitsigns.nvim",
		"kevinhwang91/nvim-hlslens",
		"echasnovski/mini.diff",
	},
	event = { "BufReadPost", "BufNewFile", "InsertEnter" },
	opts = {
		minimap = {
			enabled = true,
			preset = "vscode",
		},
		scrollbar = {
			preset = "intellij",
		},
		providers = {
			lsp_semantic_tokens = true,
			gitsigns = true,
			search = true,
			diagnostic = true,
			cursor = true,
			mini_diff = true,
		},
		exclude = {
			filetypes = {
				"dashboard",
			},
			buftypes = {
				"nofile",
				"terminal",
			},
		},
	},
}
