return {
	"p00f/clangd_extensions.nvim",
	dependencies = {
		"neovim/nvim-lspconfig",
	},
	opts = {
		ast = {
			role_icons = { type = "🄣", declaration = "🄓", expression = "🄔" },
		},
	},
	ft = { "c", "cpp", "objc", "objcpp", "cuda" },
	keys = {
		{ "<leader>cceh", "<cmd>ClangdSwitchSourceHeader<CR>", desc = "Switch Source/Header" },
		{ "<leader>ccea", "<cmd>ClangdAST<CR>", desc = "View AST" },
		{ "<leader>ccet", "<cmd>ClangdTypeHierarchy<CR>", desc = "Type Hierarchy" },
		{ "<leader>ccei", "<cmd>ClangdSymbolInfo<CR>", desc = "Symbol Info" },
	},
}
