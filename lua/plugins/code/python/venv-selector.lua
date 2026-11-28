return {
	"linux-cultist/venv-selector.nvim",
	cmd = { "VenvSelect", "VenvSelectCached", "VenvSelectCached" },
	event = "VimEnter",
	keys = {
		{ "<leader>cpvs", "<cmd>:VenvSelect<CR>", desc = "Select VirtualEnv" },
		{ "<leader>cpvc", "<cmd>:VenvSelectCached<CR>", desc = "Select Cached VirtualEnv" },
		{ "<leader>cpvr", "<cmd>:VenvSelectRetrieve<CR>", desc = "Select Retrieve VirtualEnv" },
	},
	opts = {},
}
