return {
	"linux-cultist/venv-selector.nvim",
	dependencies = {
		"neovim/nvim-lspconfig",
		"nvim-telescope/telescope.nvim",
	},
	event = "VimEnter",
	keys = {
		{ "<leader>cpvs", "<cmd>:VenvSelect<cr>", desc = "Select VirtualEnv" },
		{ "<leader>cpvc", "<cmd>:VenvSelectCached<cr>", desc = "Select Cached VirtualEnv" },
		{ "<leader>cpvr", "<cmd>:VenvSelectRetrieve<cr>", desc = "Select Retrieve VirtualEnv" },
	},
	opts = {},
}
