return {
	"wsdjeg/bufdel.nvim",
	cmd = { "Bdelete", "Bwipeout" },
	keys = {
		{ "<leader>bd", "<cmd>Bdelete<CR>", desc = "Delete buffer" },
		{ "<leader>bD", "<cmd>Bdelete!<CR>", desc = "Force delete buffer" },
		{ "<leader>bw", "<cmd>Bwipeout<CR>", desc = "Wipeout buffer" },
	},
}
