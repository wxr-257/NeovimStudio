return {
	"romus204/tree-sitter-manager.nvim",
	cmd = "TSManager",
	event = { "BufReadPre", "BufNewFile", "InsertEnter" },
	opts = {
		auto_install = true,
		highlight = true,
		nerdfont = true,
		ensure_installed = "all",
	},
	init = function()
		vim.treesitter.language.register("json", "jsonc")
	end,
}
