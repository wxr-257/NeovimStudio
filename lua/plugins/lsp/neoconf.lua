return {
	"folke/neoconf.nvim",
	cmd = "Neoconf",
	keys = {
		{ "<leader>lnc", "<cmd>Neoconf<cr>", desc = "Neoconf: Edit config" },
		{ "<leader>lns", "<cmd>Neoconf show<cr>", desc = "Neoconf: Show merged config" },
		{ "<leader>lnl", "<cmd>Neoconf lsp<cr>", desc = "Neoconf: Show LSP config" },
		{ "<leader>lnp", "<cmd>Neoconf local<cr>", desc = "Neoconf: Edit local settings file" },
		{ "<leader>lng", "<cmd>Neoconf global<cr>", desc = "Neoconf: Edit global settings file" },
	},
	opts = {},
}
