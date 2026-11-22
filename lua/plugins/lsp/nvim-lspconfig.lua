return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"folke/neoconf.nvim",
	},
	event = { "BufReadPre", "BufNewFile", "InsertEnter" },
	init = function()
		vim.diagnostic.config({
			virtual_text = {
				severity = {
					min = vim.diagnostic.severity.WARN,
				},
			},
			signs = {
				text = {
					ERROR = "❌",
					WARN = "⚠️",
					INFO = "ℹ️",
					HINT = "🔍",
				},
			},
			virtual_lines = false,
			update_in_insert = true,
			undercurl = true,
		})
		vim.lsp.inlay_hint.enable(true)
	end,
	config = function()
		vim.api.nvim_exec_autocmds("User", { pattern = "LspReady" })
	end,
}
