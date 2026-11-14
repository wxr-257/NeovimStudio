return {
	"folke/lazydev.nvim",
	dependencies = {
		"Bilal2453/luvit-meta",
	},
	ft = "lua",
	opts = {
		library = {
			{ path = "luvit-meta/library", words = { "vim%.uv" } },
			{ path = "vim.lsp", words = { "vim%.lsp" } },
			{ path = "vim.treesitter", words = { "vim%.treesitter" } },
		},
	},
}
